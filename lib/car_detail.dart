import 'package:flutter/material.dart';
import 'package:tugasproject2/Payment.dart';
import 'package:tugasproject2/bottom_bar.dart';

class CarDetail extends StatelessWidget {
  final assetPath, carprice, carname;

  CarDetail({this.assetPath, this.carprice, this.carname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Description',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  'Avanza',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF69F0AE))
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(carprice,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF69F0AE))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(carname,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Poppins',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('best, your dream deluxe car. Pick your favorite deluxe car and performance.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFF69F0AE),

                    ),
                    child: Center(
                        child: Text('Add to Payment',

                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        )
                    )
                )
            )
          ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  HomeEdrik()),
      );},
        backgroundColor: Color(0xFF69F0AE),
        child: Icon(Icons.shopping_cart_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}