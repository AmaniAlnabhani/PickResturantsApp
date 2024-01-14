import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'McDonald\'s',
    'Pizza Hut',
    'Panda Express',
    'Olive Garden'
  ];

     // ignore: prefer_typing_uninitialized_variables
     var  currentIndex ;
   


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('What do you want to eat?!'),
            // ignore: unnecessary_null_comparison
            if (currentIndex != null)
              Text(
                restaurants[currentIndex],
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            const Padding(padding: EdgeInsets.only(top:10),),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amberAccent,
               foregroundColor: Colors.black,
              ),
              onPressed:(){
                updateIndex();
              },
              child: const Text('Pick Resturants'),
            )
          ],
        )),
      ),
    );
  }
  void updateIndex (){
    final random =Random();
    final index =random.nextInt(restaurants.length);
    setState(() {
      currentIndex=index;
    });
  }
}
