import 'package:flut/widgets/HeaderImage.dart';
import 'package:flut/widgets/PropertyInfo.dart';
import 'package:flutter/material.dart';
import 'package:flut/widgets/InteriorInfo.dart';
import 'package:flut/widgets/ContactCard.dart';

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
        children: const <Widget>[
          HeaderImage(), // Utilisez le widget HeaderImage
          PropertyInfo(), // Utilisez le widget PropertyInfo
          InteriorInfo(), // Utilisez le widget InteriorInfo
          ContactCard(), // Utilisez le widget ContactCard
        ],
      ),
    );
  }
}
