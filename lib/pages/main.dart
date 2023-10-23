import 'package:flutter/material.dart';
import 'home.dart'; // Assurez-vous que le chemin vers votre fichier home.dart est correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter test',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(
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
              ),
              Container(
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
                        const SizedBox(width: 8.0),
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
                margin: const EdgeInsets.only(top: 1.0),
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                'Interior',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Text(
                              '950 sqft',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '                 Type',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '               Rental',
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
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '                Other',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                '                Air Conditioning',
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
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
              child: Container(
                height: 50.0,
                color: Colors.white,
              ),
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
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          shape: BoxShape
                              .circle, // Assurez-vous que la forme est un cercle
                          gradient: LinearGradient(
                            begin: Alignment.topLeft, // Début du dégradé
                            end: Alignment.bottomRight, // Fin du dégradé
                            colors: [
                              Color(0xFF00A3A3),
                              Color(0xFFD9FF66)
                            ], // Couleurs du dégradé
                          ),
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset('assets/img8.png',
                                fit: BoxFit
                                    .cover, // Remplir l'espace en conservant l'aspect ratio
                                height: 500 // Ajustez la hauteur au maximum
                                ),
                          ),
                        ),
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
                              fontFamily: 'YourProfessionalFont',
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          const Text(
                            'LatoyaMiller@gmail.com',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'YourProfessionalFont',
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(12, 179, 235, 0.6),
                                  Colors.yellow,
                                ],
                                stops: [0.0, 1.0],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Bouton cliqué'),
                                      content: const Text(
                                        'Le bouton Expand a été cliqué !',
                                      ),
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
                                // ignore: deprecated_member_use
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: const Text(
                                'Book an Appointment',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Home(), // Utilisez le nom de la classe de votre page d'accueil
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              // Personnalisez le style du bouton
                              primary: Colors.blue, // Couleur du bouton
                            ),
                            child: const Text(
                              "Retour",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          )
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
