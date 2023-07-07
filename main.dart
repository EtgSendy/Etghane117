import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile_image.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                // Action lorsque l'option 1 est sélectionnée
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Action lorsque l'option 2 est sélectionnée
              },
            ),
            ListTile(
              title: Text('Option 3'),
              onTap: () {
                // Action lorsque l'option 3 est sélectionnée
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenue dans mon application',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Sélectionnez une option dans le tiroir',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Bouton 1'),
                  onPressed: () {
                    // Action lorsque le bouton 1 est pressé
                  },
                ),
                ElevatedButton(
                  child: Text('Bouton 2'),
                  onPressed: () {
                    // Action lorsque le bouton 2 est pressé
                  },
                ),
                ElevatedButton(
                  child: Text('Bouton 3'),
                  onPressed: () {
                    // Action lorsque le bouton 3 est pressé
                  },
                ),
                ElevatedButton(
                  child: Text('Bouton 4'),
                  onPressed: () {
                    // Action lorsque le bouton 4 est pressé
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
