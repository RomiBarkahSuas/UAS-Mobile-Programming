import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tugasproject2/deskripsi.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Autolux',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeAutoLux(),
    );
  }
}

class HomeAutoLux extends StatelessWidget {
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
                    child: TextField(decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical:8),
                      prefixIcon: Icon(Icons.search, size: 20),
                      hintText: 'Search',
                    ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 196,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage("Assets/images/johannes-giez-VOsy-vH3V2c-unsplash.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                    text: 'Categories Cars',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: 'Toyota',
                          imgSrc: 'Assets/icons/cropped-toyota-brand-portage-toyota-removebg-preview.png',
                        ),
                        CategoryCard(
                          title: 'Mazda',
                          imgSrc: 'Assets/icons/Mazda-emblem-2.jpg.f8be893c6185aaf5aa9c0d2f139711b0-removebg-preview.png',
                        ),
                        CategoryCard(
                          title: 'Mitsubishi',
                          imgSrc: 'Assets/icons/mitsubishi-logo-decal-drews-decals-54434.png',
                        ),
                        CategoryCard(
                          title: 'Honda',
                          imgSrc: 'Assets/icons/pngfind.com-cars-logo-png-628188.png',
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      },
        backgroundColor: Color(0xFF69F0AE),
        child: Icon(Icons.shopping_cart_outlined),
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