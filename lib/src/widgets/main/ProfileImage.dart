import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF00A3A3), Color(0xFFD9FF66)],
            ),
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/img8.png', fit: BoxFit.cover, height: 500),
            ),
          ),
        ),
      ),
    );
  }
}