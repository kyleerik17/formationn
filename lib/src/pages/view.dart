import 'package:flut/src/widgets/main/ContactInfo.dart';
import 'package:flutter/material.dart';
import '../widgets/main/HeaderImage.dart';
import '../widgets/main/InteriorInfo.dart';
import '../widgets/main/PropertyInfo.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: const <Widget>[
              HeaderImage(),
              PropertyInfo(),
              InteriorInfo(),
              ContactInfo(),
            ],
          ),
        ],
      ),
    );
  }
}
