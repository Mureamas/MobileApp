// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'style.dart';
import 'beadData.dart';

main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: new ThemeData(
      //primarySwatch: Colors.blue,
      //primaryColor: const Color(0xFF2196f3),
      //accentColor: const Color(0xFF2196f3),
      //canvasColor: const Color(0xFFfafafa),
      //),
      home: HomePage(),
    ),
  );
} //ef

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 239),
      //appBar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 248, 239),
          title: Text(
            "Hand made Accessories",
            style: t1,
          ),
          //to remove shadow from the AppBar
          elevation: 0,
          //to make the title to be in the middle
          centerTitle: true,
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          Divider(
            height: 10,
            color: const Color.fromARGB(255, 186, 222, 209),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  "Home",
                  style: t2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Shop",
                  style: t2,
                ),
              ),
              Image.asset(
                'images/Heart_bead.png',
                height: 150,
                width: 150,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Cart",
                  style: t2,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: t2,
                ),
              ),
            ],
          ),

          //HomePage Picture
          Divider(
            height: 10,
            color: const Color.fromARGB(255, 186, 222, 209),
          ),

          Container(
            child: Image.asset('images/HomePageImg_1.png'),
          ),

          //Our Best Seller section
          Divider(
            height: 10,
            color: const Color.fromARGB(255, 186, 222, 209),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: null,
              decoration: InputDecoration(
                focusColor: Colors.red,
                hintText: 'Search...',
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 255, 125, 147),
                ),
                suffixIcon: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 255, 125, 147),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 125, 147),
                  ),
                ),
              ),
            ),
          ),

          Center(
            child: Text(
              "Our best seller",
              style: t3,
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: null,
            itemBuilder: (context, index){
            },
          )
          
        ], //children
      ),
    );
  } //ef
}//ec