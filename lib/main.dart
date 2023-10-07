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
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/img1.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(5.0),
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
                    padding: const EdgeInsets.all(5.0),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        // Action à exécuter lorsque l'icône "Paramètres" est cliquée
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  right: 75.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        // Action à éxécuter lorsque l'icône "Notifications" est cliquée
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Section du prix et des widgets "2 Bedroom" et "2 Bathroom"
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  '476, Abidjan Bassam',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'New york city, Brooklyn',
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
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Row(
                        children: <Widget>[
                          Icon(Icons.king_bed, color: Colors.black),
                          SizedBox(width: 8.0),
                          Text(
                            '2 Bedroom',
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
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Row(
                        children: <Widget>[
                          Icon(Icons.bathtub, color: Colors.black),
                          SizedBox(width: 8.0),
                          Text(
                            '2 Bathroom',
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
          // Votre carte ici
          Card(
            margin: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/img2.jpg',
                    // Chemin de votre image dans le dossier assets
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
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
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        const Text(
                          'LatoyaMiller@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Action à exécuter lorsque le bouton "Expand" est cliqué
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Bouton cliqué'),
                                  content: const Text('Le bouton Expand a été cliqué !'),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0), // Ajustez le rayon selon votre besoin
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
                              borderRadius: BorderRadius.circular(8.0), // Ajustez le rayon selon votre besoin
                            ),
                            // Autres styles de bouton ici
                          ),
                          child: const Text(
                            'Book an appointment',
                            style: TextStyle(
                              color: Colors.white,
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
        ],
      ),
    );
  }
}
