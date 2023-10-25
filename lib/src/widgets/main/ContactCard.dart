
import 'package:flut/src/widgets/main/ContactInfo.dart';
import 'package:flut/src/widgets/main/ProfileImage.dart';
import 'package:flut/src/widgets/main/ReturnButton.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProfileImage(), // Utilisez le widget ProfileImage
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ContactInfo(), // Utilisez le widget ContactInfo
            ),
          ),
          ReturnButton(), // Utilisez le widget ReturnButton ici
        ],
      ),
    );
  }
}