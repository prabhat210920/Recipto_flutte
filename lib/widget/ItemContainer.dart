import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String price;
  final String maxLimit;

  const CustomContainer({
    Key? key,
    required this.imagePath,
    required this.itemName,
    required this.price,
    required this.maxLimit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            ListTile(
              leading: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
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
                          child: Image.asset('assets/Coins.png', width: 24, height: 24), 
                        ),
                        Text(
                          '$price', 
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                padding: EdgeInsets.all(4),
                color: Colors.black.withOpacity(0.5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 4),
                    Text(
                      'Limit: $maxLimit',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
