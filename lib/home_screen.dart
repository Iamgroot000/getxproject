/// THis class is for getx height and width

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homesscreeen extends StatefulWidget {
  const Homesscreeen({super.key});

  @override
  State<Homesscreeen> createState() => _HomesscreeenState();
}

class _HomesscreeenState extends State<Homesscreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Container(
        height: Get.height* .7,
        width: Get.width * 1,
        color: Colors.green,
        child: Center(
            child: Text("Instead of using mediaquery , in getx we use "
                "height : Get.height* .7 and same condition for width , "
                "multiply your height and width according to your conatiner requirement")),
      ),
    );
  }
}
