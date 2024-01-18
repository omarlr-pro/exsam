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

  Color _appBarColor = Colors.blue; // Change the color as desired
  String _nom = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor,
        title: Center(child: Text("$_nom")),
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
                  _appBarColor = Colors.black; // Change the color as desired
                });
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return page2(nom: _controllerNom.text);
                }));
                print(_nom);
              },
              child: Text("$_nom"),
            ),
          ),
        ],
      ),
    );
  }
}
