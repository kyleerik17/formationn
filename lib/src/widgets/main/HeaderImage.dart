import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(65.9),
              topRight: Radius.circular(65.9),
            ),
            child: Image.asset(
              'assets/img2.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 20.0,
            left: 20.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(2.0),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(2.0),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.share_outlined),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            right: 80.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(2.0),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.bookmark_border_outlined),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
