import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/woman.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "utilisateur de l'application",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Element'),
                    Text('Rendez-vous'),
                    Text('Suivi'),
                    Text('Notification'),
                  ],
                ),
                Column(
                  children: [
                    Text('Nombre'),
                    Text('1'),
                    Text('2'),
                    Text('7'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    
                    Text('Rendez-vous'),
                Radio(
                  value: 1,
                  groupValue: null,
                  onChanged: null,
                ),
                    Text('Uegene'),
                Radio(
                  value: 2,
                  groupValue: null,
                  onChanged: null,
                ),
                   Text('Suivi'),
                Radio(
                  value: 3,
                  groupValue: null,
                  onChanged: null,
                ),
                
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                      },
                      child: Text('Envoyer'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    
                    Text('CLINIQUEZ'),
                    ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                      },
                      child: Text('Annuler'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
