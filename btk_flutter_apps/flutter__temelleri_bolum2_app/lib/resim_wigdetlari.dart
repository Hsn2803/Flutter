import 'package:flutter/material.dart';

class ResimWigdetlari extends StatelessWidget {
  ResimWigdetlari({super.key});
  var _url =
      'https://vetesveteriner.com/wp-content/uploads/2023/06/scottish-fold-kedi-hastaliklari-vetesveteriner.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resim Wigdetları")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue.shade300,
                    child: Image.asset(
                      'assets/images/kedi.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue.shade300,
                    child: Image.network(_url, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FadeInImage.assetNetwork(
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/kedi.jpg',
                    image:
                        _url, //ikinci resim gelene kadar ilk resim görseli olur
                  ),
                ),
                Expanded(child: Placeholder(color: Colors.red)),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kedi.jpg'),
                    radius: 50,
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_url),
                    radius: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
