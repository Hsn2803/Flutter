import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    var myBlackConteiner = Container(
          color: Colors.black,
          child: Row( //yan yana yazmak anlamına gelir
          mainAxisAlignment: MainAxisAlignment.spaceAround, //buda içteki containerlerin konumunu rowda (yatayda) ayarlmaya yarar
          crossAxisAlignment: CrossAxisAlignment.center, //buda içteki konteynerlerın konumunu columnda(karşıt eksende (dikeyde)) ayarlamaya yarar
            children: [
              myContainer(),
              myContainer(),
            ],
          ),
        );
    return MaterialApp(
      home: Scaffold( //ekranın beyaz şekilde gelmesi yani sana bir alan sunulması
        appBar: AppBar( //yukarıdaki başlık kısmı
          backgroundColor: Colors.blue,
          title: const Text("Test App"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              fit: FlexFit.tight,  //artık expanded gibi kullanılıyor
              child: Container(
                color: Colors.green,
                width: 50,
                height: 300,
              ),
            ),
            Flexible( //eğer alan varsa verdiğim değer ol yoksa kendini sığdır satır kaplanmasa da olur
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 300,
              ),
            )
          ],
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Button Tıklandı");
          },
          backgroundColor: Colors.deepOrange,
          child: const Icon(Icons.add_a_photo_outlined),
        ),
      ),
    );
  }

  List<Widget> get expandedAnlatimi {
    return [
          Expanded(
            flex: 1, //oran gibi bir şey toplam bir satırın 1ini kaplasın anlamında kullanılır
            child: Container(
              width: 150, //widthlerin  bir önemi kalmadı
              height: 150,
              color: Colors.red,
            ),
          ), Expanded(
            flex: 2,
            child: Container(
              width: 150, 
              height: 150,
              color: Colors.blue,
            ),
          ), Expanded(
            flex: 3,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
          )
        ];
  }

  Column myMainColumn(Container myBlackConteiner) {
    return Column(
        mainAxisSize: MainAxisSize.max, //conteynırlar en az şekilde veya en çok şekilde yer kaplasın
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //dikeyde conteinerlerı konumlar //crossAxisi ise yatay eksen olur haliyle
        children: [
          myBlackConteiner,
          myBlackConteiner,
        ],
      );
  }

  Container myContainer() {
    return Container( //Container yazınıza arka plan yapar (sarmalar)
          color: Colors.blueGrey,
          height:200, //kutu yüksekliği
          width:200, //kutu genişliği
          //margin: EdgeInsets.all(8), //dıştaki konteynırın dış öğelere uzaklığını ayarlar
          margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5), //x ve y ekseni uzaklık belirler
          padding: const EdgeInsets.all(15), // sarı zve zkırmızı kutu arasına 8 piksellik boşluk verdi
          alignment: Alignment.center, //yazımızın konumunu değiştiriyoruz burda kutunun ortasına gitmesini istedik Aligment(x,y) ise direkt kordinat vermemizi istiyor ama y zekseni tersine çalışır
          child: Container( //bununda height ve weight ayarları yapılabilir 
            child: const Text("Hasan♥Şevval"), 
            height: 110,
            width: 110,
            alignment: Alignment.center,
            color: Colors.white,
            ),
        );
  }
}
