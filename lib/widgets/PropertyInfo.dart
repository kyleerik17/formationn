import 'package:flutter/material.dart';

class PropertyInfo extends StatelessWidget {
  const PropertyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '465 E 7th St, Brooklyn',
            style: TextStyle(
                    color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'New York City, Brooklyn',
            style: TextStyle(
                    color: Colors.black,
              fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '\$3,800.00/',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'month',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.transparent,
                    width: 5.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.door_front_door_outlined,
                        color: Colors.black),
                    SizedBox(width: 8.0),
                    Text(
                      '2 Bedrooms',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.transparent,
                    width: 5.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.bathtub_outlined, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text(
                      '2 Bathrooms',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),  );
    }
  }
