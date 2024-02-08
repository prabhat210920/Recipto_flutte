import 'package:flutter/material.dart';
import 'package:recipto_flutter/widget/BuilldAvtar.dart';
import 'package:recipto_flutter/widget/ItemContainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Upload Bills'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/Coins.png', width: 24, height: 24), // Replace 'coins_image.png' with your actual image path
                  ),
                  Text(
                    '100', // Replace with your actual number of coins
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AvatarWithName(imagePath: 'assets/Studio 11.png', name: 'Sudio 11',),
                  AvatarWithName(imagePath: 'assets/Beauty - Dummy 02.png', name: 'Beauty',),
                  AvatarWithName(imagePath: 'assets/Nykaa.png', name: 'Nyka',),
                  AvatarWithName(imagePath: 'assets/Ratnadeep.png', name: 'Ratnadeep',),
                  AvatarWithName(imagePath: 'assets/biscuit.png', name: 'biscuit',),
                ],
              ),
            ),
            Container(
              height: 40,
              color: Colors.blueGrey[50],
              alignment: Alignment.center,
              child: Text(
                'Latest Deals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                children: [
                  CustomContainer(imagePath: 'assets/Studio 11.png', itemName: 'Studio', price: '50', maxLimit: '35', ),
                  CustomContainer(imagePath: 'assets/Beauty - Dummy 02.png', itemName: 'assets/Beauty - Dummy 02.png', price: '150', maxLimit: '45', ),
                  CustomContainer(imagePath: 'assets/Ratnadeep.png', itemName: 'assets/Ratnadeep', price: '150', maxLimit: '30', ),
                  CustomContainer(imagePath: 'assets/biscuit.png', itemName: 'assets/biscuit', price: '50', maxLimit: '35', ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}




