import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     debugShowCheckedModeBanner: false, // Enlever le mot DEBUG
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'assets/images/OIP.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Row(
                    children: [
                      Radio(value: 1, groupValue: null, onChanged: null),
                      Text('Ajouter'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 2, groupValue: null, onChanged: null),
                      Text('Modifier'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 3, groupValue: null, onChanged: null),
                      Text('Supprimer'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nom',
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Prénom',
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Adresse',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text('Baccalauréat'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text('BTS                '),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text('Licence         '),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text('Master          '),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text('Doctorat       '),
                        ],
                      ),
                    ],
                  ),
                  Spacer(), // Crée un espace flexible
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 150,
                        height: 110, // Augmenter la largeur du bouton
                        
                     child: ElevatedButton(
                        onPressed: () {},
                        child: Text('CONFIRMER'),
                      ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Résultat',
                        textAlign: TextAlign.center, // Centrer le texte
                      ),
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
