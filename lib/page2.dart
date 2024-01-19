import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  final String nom;
  final String prenom;
  final int age;

  const page2({
    Key? key,
    required this.nom,
    required this.prenom,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 148, 190), // Change the color as desired
      appBar: AppBar(
        title: Text('page 2'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Bienvenue ${nom.toUpperCase()} ${prenom.toUpperCase()}, ${age < 18 ? "mineure" : "majeure"}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 99, 255, 105)), // Change the color as desired
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Retour'),
          ),
        ],
      ),
    );
  }
}
