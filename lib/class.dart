import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("GET X ")),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text(" Guardian of galaxy"),
              subtitle: Text("I am Groot"),
              onTap: () {
                Get.defaultDialog(
                    title: 'Hello Rabbit',
                    contentPadding: EdgeInsets.all(20),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('ok')),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Cancel'))

                    /// we can use this method also , in above i use get.back() , it will return on snackbar bu clicking on ok and cancel button
                    ///
// middleText: 'I am aveneger',
// textConfirm: 'yes',
//textCancel: 'no',

                    );
              },
            ),
          ),
          Card(
              child: ListTile(
                  title: Text(" I am Ironman"),
                  subtitle: Text('Avenger Bottomsheet'),
                  onTap: () {
                    /// for bottomsheet
                    Get.bottomSheet(Container(
                        color: Colors.blueGrey,
                        child: Column(children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light theme"),
                            onTap: () {
                              ///changining the color in,light
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text('Dark mode'),
                              onTap: () {
                                /// changining the color in dark
                                Get.changeTheme(ThemeData.dark());
                              }),
                        ])));
                  })),
          Row(
            children: [
              Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Get.to( SecondPage(name: 'Groot',));
                        },
                        child: Text("Go to the next screen"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// synatx for using snackbar
          Get.snackbar('I am Groot', 'Groot is here',

              ///these are the prop....
              //backgroundColor: Colors.red,
              //  snackPosition: SnackPosition.BOTTOM

              /// it will add a button in snackbar
              onTap: (snap) {},
              mainButton: TextButton(onPressed: () {}, child: Text("click")));
        },
      ),
    );
  }
}


// class Screen2 extends StatefulWidget {
//   const Screen2({super.key});
//
//   @override
//   State<Screen2> createState() => _Screen2State();
// }
//
// class _Screen2State extends State<Screen2> {
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Column(
//         children: [
//           Card(
//             child: Container(
//               height: 200,
//               width: 400,
//               color: Colors.yellow,
//               child: OutlinedButton(
//                 onPressed: (){
//
//
//                   Get.back();
//                 }, child: Text(" Back to previous screen"),
//
//               ),
//
//
//
//
//
//             ),
//
//
//
//           ),
//
//               Expanded(
//                   child:  Container(
//                     margin: EdgeInsets.only(bottom: 10),
//                     height: 40,
//                     width: 100,
//                     color: Colors.white,
//                     child: OutlinedButton(
//                       onPressed: () {
//                         Get.changeTheme(ThemeData.dark());
//                       },
//                       child: Text('Light Theme'),
//                     ),
//                   ),
//               ),
//             ],
//           );
//
//
//
//
//
//
//   }
//}