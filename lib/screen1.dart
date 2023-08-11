
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Screen2.dart';
import 'class.dart';


class SecondPage extends StatefulWidget {
  final String name;
  const SecondPage({super.key, required this.name});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" SCREEN1" +widget.name),
      ),
      body: Center(
        child: Container(
          child: OutlinedButton(
            onPressed: (){

              Get.to(thirdPage());
            }, child: Text('Hello i am here'),
          ),



        ),

      ),


    );


  }
}
