import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tugasproject2/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo NPM',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeEdrik(),
    );
  }
}

class HomeEdrik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            BottomAppBar(
                shape: CircularNotchedRectangle(),
                notchMargin: 6.0,
                color: Colors.transparent,
                elevation: 9.0,
                clipBehavior: Clip.antiAlias,
                child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                        ),
                        color: Colors.white
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50.0,
                              width: MediaQuery.of(context).size.width /2 - 40.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.home, color: Color(0xFF69F0AE)),
                                  Icon(Icons.person_outline, color: Color(0xFF676E79))
                                ],
                              )
                          ),
                          Container(
                              height: 50.0,
                              width: MediaQuery.of(context).size.width /2 - 40.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.search, color: Color(0xFF676E79)),
                                  Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                                ],
                              )
                          ),
                        ]
                    )
                )
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget> [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Container(
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    text: 'Pembayaran',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    text: 'Transfer Bank',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Container(
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Masukkan Bank',
                    ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    text: 'Nomor Rekening',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text.rich(TextSpan(
                    text: '372 717 7171',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    text: 'Suazo Market :',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text.rich(TextSpan(
                    text: 'Rp 0000000, -',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.black,
                          shadowColor: Colors.grey,
                          alignment: Alignment.center,
                          elevation: 3,
                          minimumSize: Size(230, 45), //////// HERE
                        ),
                        onPressed: () {},
                        child: Text('Bayar'),
                      ),
                      Text.rich(TextSpan(
                        text: '* Bukti pembayaran via e-mail',
                        style: TextStyle(fontWeight: FontWeight.normal,),
                      ),
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shadowColor: Colors.grey,
                          elevation: 3,
                          alignment: Alignment.center,
                          minimumSize: Size(230, 45), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeAutoLux()),
                          );
                        },
                        child: Text('Beli Lagi'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool isActive;
  const BottomNavItem({
    Key? key, required this.icon, required this.title, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          Image.asset(icon),
          Text(title, style: TextStyle(fontSize: 9),),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  const CategoryCard({
    Key? key, required this.imgSrc, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          Image.asset(imgSrc),
          Spacer(),
          Text(title, style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}