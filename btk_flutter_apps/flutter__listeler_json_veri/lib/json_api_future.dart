import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_listeler_json_veri/models/person_model.dart';

class JsonApiFutureBuildir extends StatelessWidget {
  const JsonApiFutureBuildir({super.key});

  Future<List<Person>> _loadJson() async {
    await Future.delayed(Duration(seconds: 3));
    try {
      var jsonString = await rootBundle.loadString('assests/data/persons.json');
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      // debugPrint(jsonMap['persons'][0]['sevdigiRenkler'][1].toString());
      List<dynamic> jsonList = jsonMap['persons'];
      List<Person> kisiler = jsonList
          .map((eleman) => Person.fromJson(eleman))
          .toList();

      for (var kisi in kisiler) {
        debugPrint(kisi.isim);
      }
      return kisiler;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Person>>(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var myPersonList = snapshot.data!;
          return ListView.builder(
            itemBuilder: (context, index) {
              var tekPerson = myPersonList[index];
              return ListTile(
                title: Text(tekPerson.isim),
                subtitle: Text(tekPerson.adres.toString()),
                leading: CircleAvatar(child: Text(tekPerson.id.toString())),
              );
            },
            itemCount: myPersonList.length,
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("Error Çıktı"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
