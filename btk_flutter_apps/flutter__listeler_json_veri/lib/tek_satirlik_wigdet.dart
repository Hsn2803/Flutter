import 'package:flutter/material.dart';

class TeksatirlikListTile extends StatelessWidget {
  const TeksatirlikListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text("Hasan Hüseyin ALTAN"),
          subtitle: Text("Geliştirici"),
        ),
        Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.purple),
      ],
    );
  }
}
