import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_time_filled_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amber),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states){
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.red;
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.blueGrey;
                  }
                }),
              ),
              label: Text("Text Button With İcon"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevetad Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text("Elevetad Button With İcon"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                side: BorderSide(color: Colors.purple, width: 4),
                shape: StadiumBorder(),
                backgroundColor: Colors.amber.withValues(alpha: 0.5),
                foregroundColor: Colors.black,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.refresh),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 4, color: Colors.pink),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              label: Text("Outlined Button With İcon"),
            ),
          ],
        ),
      ),
    );
  }
}
