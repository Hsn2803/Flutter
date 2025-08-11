import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardListTileKullanimi extends StatefulWidget {
  const CardListTileKullanimi({super.key});
  @override
  State<CardListTileKullanimi> createState() => _CardListKullanimiState();
}

class _CardListKullanimiState extends State<CardListTileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.green.shade100,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(child: tekSatir()),
          ],
        ),
      ),
    );
  }

  Column tekSatir() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
            title: Text("Hasan Hüseyin ALTAN"),
            subtitle: Text("Geliştirici"),
          ),
          Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.purple,
          ),
        ],
      );
  }
}


