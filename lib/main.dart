import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Toko Madura"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ===== PROFILE =====
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage("https://picsum.photos/200"),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Selamat datang di toko madura conk",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20),

                // ===== BANNER =====
                Stack(
                  children: [
                    Image.network(
                      "https://picsum.photos/400/200",
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.3),
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "FLASH SALE UP TO 50%",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20),

                // ===== MENU =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuButton("Roko"),
                    menuButton("Sembako"),
                    menuButton("Mie instan"),
                    menuButton("Minuman"),
                    menuButton("Pakian"),
                    menuButton("Alat Tulis"),
                  ],
                ),

                SizedBox(height: 20),

                // ===== GRID PRODUK =====
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    productCard(
                        "https://picsum.photos/200?1", "Gudang Garam", "Rp. 20.000"),
                    productCard("https://picsum.photos/200?2",
                        "Beras", "Rp. 12.000"),
                    productCard(
                        "https://picsum.photos/200?3", "Indomie", "Rp. 3500"),
                    productCard(
                        "https://picsum.photos/200?4", "Buku", "Rp. 300.000"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ===== WIDGET MENU =====
  Widget menuButton(String title) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  // ===== WIDGET PRODUK =====
  Widget productCard(String image, String title, String price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(title,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(price),
          ),
        ],
      ),
    );
  }
}