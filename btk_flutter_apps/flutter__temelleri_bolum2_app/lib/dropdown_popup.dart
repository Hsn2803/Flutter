import 'package:flutter/material.dart';

class DropdownPopup extends StatelessWidget {
  const DropdownPopup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown ve Popup"),
        actions: [PopupMenuKullanimi()], //sağ üstte menüyü eklemek için yaparız.
      ),

      body: const Center(
        child: Column(
          children: [DropDownButtonKullanimi(), PopupMenuKullanimi()],
        ),
      ),
    );
  }
}

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  var _secilenSehir = null;
  var _sehirler = ["Ankara", "Batman", "İzmir", "Van"];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("Şehir Seçin"),
      value: _secilenSehir,
      /*items: [
        DropdownMenuItem(child: Text("Ankara"), value: "Ankara"),
        DropdownMenuItem(child: Text("Batman"), value: "Batman"),
        DropdownMenuItem(child: Text("Diyarbakır"), value: "Diyarbakır"),
      ],*/
      items: _sehirler
          .map(
            (String sehir) =>
                DropdownMenuItem(child: Text(sehir), value: sehir),
          )
          .toList(),
      onChanged: (value) {
        debugPrint("Seçilen Şehir $value");
        setState(() {
          _secilenSehir = value!;
        });
      },
    );
  }
}

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});
  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  var _sehirler = ["Ankara", "Batman", "İzmir", "Van"];
  var _secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: _secilenSehir,
      //icon: Icon(Icons.add),
      //child: Text(_secilenSehir),
      itemBuilder: (context) {
        return _sehirler.map((String sehir) {
          return PopupMenuItem(child: Text(sehir), value: sehir);
        }).toList();
      },
      onSelected: (value) {
        setState(() {
          _secilenSehir = value;
        });
      },
    );
  }
}
