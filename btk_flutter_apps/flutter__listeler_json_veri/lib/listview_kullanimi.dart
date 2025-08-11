import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_listeler_json_veri/tek_satirlik_wigdet.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ListviewKullanimi extends StatelessWidget {
  ListviewKullanimi({super.key});
  List<Ogrenci> tumogrenciler = List.generate(
    100,
    (index) => Ogrenci(
      id: index + 1,
      isim: "Ögrenci Adı ${index + 1}",
      erkekMi: Random().nextBool(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tumogrenciler.length,
      itemBuilder: (context, index) => GestureDetector(
        onLongPress: () {
          debugPrint("Card wigdet Tıklanıldı ${tumogrenciler[index].isim}");
        },
        child: Card(
          color: tumogrenciler[index].erkekMi
              ? Colors.blue.shade300
              : Colors.pink.shade300,
          child: ListTile(
            onTap: () {
              SmartDialog.show(
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: tumogrenciler[index].erkekMi == true
                          ? Colors.blue.withValues(alpha: 0.8)
                          : Colors.pink.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "ListTile wigdet Tıklanıldı ${tumogrenciler[index].isim}",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              );
              debugPrint(
                "ListTile wigdet Tıklanıldı ${tumogrenciler[index].isim}",
              );
            },
            title: Text(tumogrenciler[index].isim),
            leading: CircleAvatar(child: Text(index.toString())),
          ),
        ),
      ),
    );
  }

  ListView listViewKullanimi() {
    return ListView(
      children: [
        TeksatirlikListTile(),
        TeksatirlikListTile(),
        TeksatirlikListTile(),
        TeksatirlikListTile(),
        TeksatirlikListTile(),
        TeksatirlikListTile(),
      ],
    );
  }

  SingleChildScrollView singleChildScrol() {
    return SingleChildScrollView(child: TeksatirlikListTile());
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final bool erkekMi;

  Ogrenci({required this.id, required this.isim, required this.erkekMi});

  @override
  String toString() {
    return "$isim";
  }
}
