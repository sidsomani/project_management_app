import 'package:flutter/material.dart';
import 'homepage.dart';
import 'home.dart';


class RouteManager {
  static const String homePage = '/';
  static const String todoPage = '/todoPage';
  //static const String notesPage = '/notesPage';

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case todoPage:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );

      default:
        throw const FormatException('Route not found! Check routes again!');
    }

  }

}