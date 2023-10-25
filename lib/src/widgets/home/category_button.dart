import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isTrendingButton;

  CategoryButton({required this.label, required this.isTrendingButton});

  @override
  Widget build(BuildContext context) {
    final colors = isTrendingButton
        ? [Colors.yellow, Colors.blue]
        : [Colors.yellow, Colors.blue];

    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.0),
        gradient: isTrendingButton
            ? LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: ElevatedButton(
        onPressed: () {
          // Action à effectuer lorsqu'un bouton de catégorie est cliqué
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
