import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma page Dart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.green, // Couleur de fond verte
              padding: EdgeInsets.all(10.0),
              child: Text(
                ' آملي نبغيه أبديه :: والكلب ال تل نبغيه\nاويم الكبله مان ناسيه :: باش ابعدت باش احجلِّ\nوآملي ما نسان فيه :: الكلب الِّ تل آملي\n\nغير امن ال يشرح للكلب :: آملي لعدت املّ\nشوف آملي تلِّ والكلب == الِّ تل آملي تلِّ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black, 
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 