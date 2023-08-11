
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxproject/screen1.dart';

import 'class.dart';


class thirdPage extends StatefulWidget {
  const thirdPage({super.key});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: OutlinedButton(
            onPressed: (){

              Get.to(  HomeScreen ());
            }, child: Text('GO BACK to home screen'),
          ),



        ),

      ),


    );


  }
}
