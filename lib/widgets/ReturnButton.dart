import 'package:flut/widgets/acceuil.dart';
import 'package:flut/widgets/myApp.dart';
import 'package:flutter/material.dart';
import 'ContactCard.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
      ),
      child: const Text(
        "Retour",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
