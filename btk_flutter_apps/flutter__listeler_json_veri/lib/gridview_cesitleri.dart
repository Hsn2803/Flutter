import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_listeler_json_veri/listview_kullanimi.dart';

class GridviewCesitleri extends StatelessWidget {
  GridviewCesitleri({super.key});
  List<Ogrenci> ogrenciler = List.generate(500, (index) {
    return Ogrenci(
      id: (index + 1),
      isim: "Öğrenci ${index + 1}",
      erkekMi: Random().nextBool(),
    );
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ogrenciler.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        childAspectRatio: MediaQuery.of(context).size.width > 600 ? 2 : 1.5,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blueGrey[100 * (index % 9)],
          child: Text(ogrenciler[index].toString()),
        );
      },
    );
  }

  GridView gridviewExtendKullanimi() {
    return GridView.extent(
      primary:
          true, //resimler sağa sola çekilince genişler gibi oluyor(oynuyor)
      maxCrossAxisExtent: 200,
      reverse: false,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      children: crateContainers(20),
      scrollDirection: Axis
          .vertical, //vertical ekran aşağıya dopru inilsin horzitol yana doğru gidilsin
    );
  }

  GridView girdViewCountKullanimi() {
    return GridView.count(
      primary:
          true, //resimler sağa sola çekilince genişler gibi oluyor(oynuyor)
      crossAxisCount: 4,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: crateContainers(20),
      scrollDirection: Axis.vertical,
    );
  }
}

List<Widget> crateContainers(int length) {
  return List.generate(length, (index) {
    var renkShade = 100 * ((index + 1) % 10);
    var sonShade = renkShade == 0 ? 100 : renkShade;
    return Container(
      alignment: Alignment.center,
      color: Colors.purple[sonShade],
      child: Text(
        "Container $sonShade",
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  });
}
