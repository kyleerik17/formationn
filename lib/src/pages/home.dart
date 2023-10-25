import 'package:flut/src/widgets/home/bottom_navigation.dart';
import 'package:flut/src/widgets/home/category_button.dart';
import 'package:flut/src/widgets/home/image_card.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter test',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ImageCard(
            imagePath: 'assets/img1.jpg',
            price: '\$3,800',
            location: '476 Abidjan Bassam',
            bedInfo: '2 Beds',
            bathInfo: '1 Bath',
          ),
          ImageCard(
            imagePath: 'assets/img2.jpg',
            price: '\$3,800',
            location: '476 Abidjan Bassam',
            bedInfo: '1 Bed',
            bathInfo: '1 Bath',
          ),
          // Ajoutez d'autres cartes d'images en utilisant ImageCard ici.
          CategoryButton(
            label: 'Trending',
            isTrendingButton: true,
          ),
          CategoryButton(
            label: 'Travel',
            isTrendingButton: false,
          ),
          CategoryButton(
            label: 'Hotel',
            isTrendingButton: false,
          ),
          CategoryButton(
            label: 'Food',
            isTrendingButton: false,
          ),
          CategoryButton(
            label: 'Parking',
            isTrendingButton: false,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
