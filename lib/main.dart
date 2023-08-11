import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/class.dart';
import 'package:getxproject/screen1.dart';

import 'Screen2.dart';
// import 'package:getxproject/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// we replace material app with GetMaterialApp , to use getx utils...
    /// material app:- is strcture of your code
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
        getPages: [
            GetPage(name: '/', page: ()=> HomeScreen()),
          GetPage(name: '/screen1', page: ()=> SecondPage(name: 'Groot',)),
          GetPage(name: '/screen2', page: ()=> thirdPage()),

      ],
    );
  }
}



