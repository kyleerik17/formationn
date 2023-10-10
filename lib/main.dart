import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
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
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: Image.asset(
                    'assets/img1.jpg',
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
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
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
                      onPressed: () {
                        // Action à exécuter lorsque l'icône "Paramètres" est cliquée
                      },
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
                      onPressed: () {
                        // Action à exécuter lorsque l'icône "Notifications" est cliquée
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  '465 E 7th, St, Brooklyn',
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
                const Text(
                  "£3,800.00/month",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.transparent,
                          width: 5.0,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
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
                    const SizedBox(width: 16.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                          color: Colors.transparent,
                          width: 5.0,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
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
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                // Première paire de colonnes
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // Utilisez MainAxisAlignment.spaceBetween
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alignez les éléments à gauche
                        children: <Widget>[
                          Text(
                            'Interior',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '950 sqft',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Alignez les éléments à gauche
                        children: <Widget>[
                          Text(
                            'Type',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'Rental',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                // Deuxième paire de colonnes
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, // Utilisez MainAxisAlignment.spaceBetween
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: <Widget>[
                          Text(
                            'Year built',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '2014',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: <Widget>[
                          Text(
                            'Other',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            'Air Conditioning',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Card(
              margin: const EdgeInsets.all(16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/img4.jpeg',
                        fit: BoxFit.cover,
                        height:
                            100.0, // Vous pouvez ajuster cette valeur pour réduire la taille de l'image
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Latoya Miller',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontFamily:
                                  'YourProfessionalFont', // Ajoutez ici la police professionnelle
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          const Text(
                            'LatoyaMiller@gmail.com',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily:
                                  'YourProfessionalFont', // Ajoutez ici la police professionnelle
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Bouton cliqué'),
                                    content: const Text(
                                        'Le bouton Expand a été cliqué !'),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19.0),
                              ),
                            ),
                            child: const Text(
                              'Book an appointment',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily:
                                    'YourProfessionalFont', // Ajoutez ici la police professionnelle
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
