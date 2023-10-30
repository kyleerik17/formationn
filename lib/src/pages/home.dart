import 'package:flutter/material.dart';
import 'package:flut/src/widgets/home/Map-view.dart';
import 'package:flut/src/widgets/home/category_button.dart';
import 'package:flut/src/widgets/home/image_card.dart';
import 'package:flut/src/widgets/home/bottom_navigation.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 15.0,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: const Icon(
                    Icons.candlestick_chart_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
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
          ),
          Expanded(
            child: ListView(
              children: const <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ImageCard(
                        imagePath: 'assets/img1.jpg',
                        price: '\$3,800',
                        location: '476 Abidjan Bassam',
                        bedInfo: '2 Beds',
                        bathInfo: '1 Bath',
                      ),
                    ),
                    Expanded(
                      child: ImageCard(
                        imagePath: 'assets/img2.jpg',
                        price: '\$3,800',
                        location: '476 Abidjan Bassam',
                        bedInfo: '1 Bed',
                        bathInfo: '1 Bath',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ImageCard(
                        imagePath: 'assets/img1.jpg',
                        price: '\$3,800',
                        location: '476 Abidjan Bassam',
                        bedInfo: '2 Beds',
                        bathInfo: '1 Bath',
                      ),
                    ),
                    Expanded(
                      child: ImageCard(
                        imagePath: 'assets/img2.jpg',
                        price: '\$3,800',
                        location: '476 Abidjan Bassam',
                        bedInfo: '1 Bed',
                        bathInfo: '1 Bath',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }
}
