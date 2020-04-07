import 'package:flutter/material.dart';
import 'package:pagenavigation/Login.dart';
import 'package:pagenavigation/Signup.dart';
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>Login());
      case'/second':
        if (args is String){
          return MaterialPageRoute(
           builder: (_)=>Signup(),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();

    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return AlertDialog(
        title: Text("Error"),
      );
    });
  }
}
