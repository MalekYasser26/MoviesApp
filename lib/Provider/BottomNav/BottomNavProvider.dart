import 'package:flutter/material.dart';
import 'package:movie/Screens/Homescreen.dart';
import 'package:movie/Screens/MovieScreen.dart';
import 'package:movie/Screens/Searchscreen.dart';
import 'package:movie/Screens/watchLaterScreen.dart';

class BottomNav extends ChangeNotifier {
  int index = 0;

  List <BottomNavigationBarItem>items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined), label: 'Movies'),
    BottomNavigationBarItem(icon: Icon(Icons.watch_later_outlined), label: 'Watch later'),

  ];

  changeIndex({required int index}) {
    this.index = index;
    notifyListeners();
  }

  List screens = [
    Homescreen(),
    SearchScreen(),
    MovieScreen(),
    WatchLaterScreen(),

  ];
}