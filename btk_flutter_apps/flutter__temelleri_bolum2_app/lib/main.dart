import 'package:flutter/material.dart';
import 'package:flutter_temelleri_bolum2_app/buton_turleri.dart';
import 'package:flutter_temelleri_bolum2_app/dropdown_popup.dart';
import 'package:flutter_temelleri_bolum2_app/resim_wigdetlari.dart';

//Değişmeyen Sabit Ekranda StatelessWidget Değişen Ekranda ise StateFull Widget Kullanılır...
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            //color: Theme.of(context).colorScheme.primary, =>direkt olarak üst sınıfı olmadığı için rengi default alır
            color: Colors.black,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blueGrey,
        ),
        useMaterial3: false,
      ),
      home: DropdownPopup(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sayac = 0;

  void _sayaciArttir() {
    setState(() {
      _sayac++;
      debugPrint("Sayacın Şu Anki Değeri $_sayac");
    });
  }

  void _sayaciAzalt() {
    setState(() {
      _sayac--;
      debugPrint("Sayacın Şu Anki Değeri $_sayac");
    });
  }

  void _sayaciSifirla() {
    setState(() {
      _sayac = 0;
      debugPrint("Sayacın Şu Anki Değeri $_sayac");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bölüm 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona Basılma Sayısı",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: _sayac % 2 == 0 ? Colors.red : Colors.green,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "~İkiye Tam Bölünenler Kırmızı Bölünmeyenler Yeşil Renktedir~",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _sayaciArttir();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _sayaciAzalt();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            backgroundColor: Theme.of(
              context,
            ).colorScheme.primary, //theme rengiyle aynı yapar
            onPressed: () {
              _sayaciSifirla();
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
