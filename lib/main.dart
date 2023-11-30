import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sedes Universidad Ulagos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Card(
              child:Column(
                children: <Widget>[
                  Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2020/12/semda.jpg',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Text('Osorno'),
                ],
              ) 
            ),
            
            Card(
              child:Column(
                children: <Widget>[
                  Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2020/12/Chinquihue-scaled.jpg',
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                  Text('Chinquihue'),
                ]
              ),
            ),

            Card(
              child:Column(
                children: <Widget>[
                   Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-scaled.jpg',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  Text('Chiloé')
                ],
              )  
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Más Información')
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
