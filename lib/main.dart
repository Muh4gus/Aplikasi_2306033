import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: Icon(Icons.home),
          title: Text('Aplikasi Pertamaku'),
        ),
        body: SingleChildScrollView(
          child:Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children:[
              Row(
                children: [
                  Icon(Icons.archive),
                  Text("artikel terbaru", style: TextStyle(fontWeight: .bold),)
                ],
              ),
              Card(child: Column(
                crossAxisAlignment: .start,
                children: [
                  Image.network(
                    'https://picsum.photos/id/237/600/300'
                  ),
                  Text("Artikel Tentang Anjing", style: TextStyle(fontWeight: .bold)),
                  Text("adalah keturunan serigala yang telah didomestikasi. Disebut juga sebagai anjing domestik, hewan ini dibiakkan secara selektif selama kala Pleistosen Akhir oleh para pemburu-pengumpul. Anjing dan serigala abu-abu modern berbagi nenek moyang yang sama.[4] Anjing merupakan spesies pertama yang didomestikasi lebih dari 14.000 tahun yang lalu, sebelum adanya perkembangan pertanian, meskipun studi genetika menunjukkan bahwa proses domestikasi mungkin telah dimulai lebih dari 25.000 tahun silam. Berkat hubungan panjangnya dengan manusia, anjing telah memperoleh kemampuan untuk bertahan hidup dengan pola makan kaya pati yang sebenarnya tidak memadai bagi jenis Canidae lainnya.")
                ],
              ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.comment),
                  Text(
                    "Komentar",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: .bold
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Hafiz'),
                          Text('kukira anjing sama srigala beda, ternyata masih satu keturunan ya'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Jek'),
                          Text('Satu keturunan, tapi lebih elegan srigala sih'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Acil'),
                          Text('Artikel ini memberikan informasi yang menarik tentang asal-usul anjing sebagai hewan yang telah lama hidup berdampingan dengan manusia'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Pasun'),
                          Text('Penjelasan dalam artikel ini membuat saya lebih memahami sejarah domestikasi anjing sejak ribuan tahun yang lalu'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Gufron'),
                          Text('Saya bisa berkomunikasi dengannya'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Santri Gufron'),
                          Text('Lucu tapi takut karna najis'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('Dani jon'),
                          Text('Aku udah punya 3 pelihara anjing'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('cipp'),
                          Text('hoammmm'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('faizz'),
                          Text('Sieun ku anjing mah'),
                        ]
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text('pet'),
                          Text('Anjing FF sama ga'),
                        ]
                      ),
                    ),
                  ),
                ]
              )
            ],
          ),
        ),
        )
        
      ),
    );
  }
}
