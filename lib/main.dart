import 'package:flutter/material.dart';
import 'package:movie/Provider/BottomNav/BottomNavProvider.dart';
import 'package:movie/Screens/Homescreen.dart';
import 'package:movie/Screens/Splashscreen.dart';
import 'package:movie/Screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNav(),)
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
