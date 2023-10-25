import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Latoya Miller',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            fontFamily: 'YourProfessionalFont',
          ),
        ),
        SizedBox(height: 2.0),
        Text(
          'LatoyaMiller@gmail.com',
          style: TextStyle(
            fontSize: 12.0,
            fontFamily: 'YourProfessionalFont',
          ),
        ),
      ],
    );
  }
}