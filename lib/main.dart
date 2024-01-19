import 'package:flutter/material.dart';
import 'page2.dart';

void main() {
  runApp(MaterialApp(home: AppForms()));
}

class AppForms extends StatefulWidget {
  const AppForms({Key? key}) : super(key: key);

  @override
  State<AppForms> createState() => _AppFormsState();
}

class _AppFormsState extends State<AppForms> {
  final TextEditingController _controllerNom = TextEditingController();
  final TextEditingController _controllerPrenom = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();

  Color _appBarColor = Colors.blue; // Change the color as desired
  String _nom = '';
  String _prenom = '';
  int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor,
        title: Center(child: Text("$_nom $_prenom $_age")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _controllerNom,
              style: TextStyle(fontSize: 15, color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'ara smiya',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _controllerPrenom,
              style: TextStyle(fontSize: 15, color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'ara kniya ',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _controllerAge,
              style: TextStyle(fontSize: 15, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'chh7al f3mrk ?',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {
                setState(() {
                  _nom = _controllerNom.text;
                  _prenom = _controllerPrenom.text;
                  _age = int.tryParse(_controllerAge.text) ?? 0;
                  _appBarColor = Color.fromARGB(255, 41, 191, 66); // Change the color as desired
                });
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return page2(nom: _nom, prenom: _prenom, age: _age);
                }));
              },
              child: Text("valider"),
            ),
          ),
        ],
      ),
    );
  }
}
