import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: ColorPickerPage());
  }
}

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key});
  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  Color selectedColor = Colors.blue;
  bool isCircular = false;
  bool isShowColorName = true;
  void _rastgeleRenkSec() {
    final colors = renkler.keys.toList();
    final rastgeleSayi = Random().nextInt(colors.length);
    final randomColor = colors[rastgeleSayi];
    setState(() {
      selectedColor = randomColor;
      debugPrint(rastgeleSayi.toString());
    });
  }

  void _renginKodunuGoster() {
    Fluttertoast.showToast(
      msg:
          "RGB :(${selectedColor.red},${selectedColor.green},${selectedColor.blue})",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: selectedColor,
      textColor: Colors.white,
      fontSize: 24.0,
    );
  }

  void _containerSekliniDegistir() {
    setState(() {
      isCircular = !isCircular;
    });
  }

  final Map<Color, String> renkler = {
    Colors.red: "Kırmızı",
    Colors.blue: "Mavi",
    Colors.green: "Yeşil",
    Colors.yellow: "Sarı",
    Colors.purple: "Mor",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Renk Seçiçi"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                isShowColorName = !isShowColorName;
              });
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "a",
                  child: Row(children: [Text("Renk Adını Göster/Gizle")]),
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(isCircular ? 100 : 10),
                boxShadow: [
                  BoxShadow(
                    color: selectedColor.withValues(alpha: 0.5),
                    blurRadius: 20,
                    spreadRadius: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isShowColorName
                ? Text(renkler[selectedColor] ?? "Seçilen Renk")
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<Color>(
                    value: selectedColor,
                    items: renkler.entries.map((entry) {
                      return DropdownMenuItem(
                        value: entry.key,
                        child: Row(
                          children: [
                            Container(width: 20, height: 20, color: entry.key),
                            SizedBox(width: 4),
                            Text(entry.value),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedColor = value!;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: _rastgeleRenkSec,
                    child: Text("Rastgele"),
                  ),
                  IconButton(
                    onPressed: _renginKodunuGoster,
                    icon: Icon(Icons.info),
                  ),
                  IconButton(
                    onPressed: () {
                      _containerSekliniDegistir();
                    },
                    icon: Icon(
                      isCircular
                          ? Icons.square_outlined
                          : Icons.circle_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
