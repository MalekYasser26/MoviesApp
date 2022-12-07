import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie/Screens/Homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 2),
  //         () {
  //       if(kDebugMode) {
  //         Navigator.pushReplacement(
  //             context, MaterialPageRoute(builder: (context) =>Homescreen(),));
  //       }},);
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:CircularProgressIndicator(color: Colors.amber,)) ,
    );
  }
}
