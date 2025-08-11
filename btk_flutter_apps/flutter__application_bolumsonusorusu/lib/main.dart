import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  final url="https://www.clipartmax.com/png/full/185-1855903_ratownictwo-medyczne.png";

  Widget _buildItem(String value,String label ){
    return Expanded(child: Column(
                          children: [
                            Text(value ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(label)
                          ],
                        ),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profil Sayfası"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(url),
                ),
                SizedBox(height: 8),
                Text("~Hsnaltn72~",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),), SizedBox(height: 8),
                Text("Flutter Bootcamp",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400)),
                SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        _buildItem("1,5K","Takipçi"),
                        _buildItem("2,5K","Takip"),
                        _buildItem("150","Gönderi"),
                        
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hakkımda",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 2),
                      Text("Ben Fırat Üniversitesinin Bilgisyar Mühendisliği Bölümünde 3.sınıf 230260023 Nolu Hasan Hüseyin Altan isim ve Soyisimli Öğrencisiyim... ",style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5),
                      
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.red,
                              ),SizedBox(width: 20), 
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.blue,
                              ),SizedBox(width: 20),
                               CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellow,
                              ),
                              SizedBox(width: 20),
                               CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.black,
                              ),SizedBox(width: 20), 
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.orange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}