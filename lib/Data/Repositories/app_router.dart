import 'package:ecom_app/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Presentation/Screens/screens.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print('This is route: ${settings.name}');
    }
    switch(settings.name){
      case '/':
        return Home.route();
      case Home.routeName:
        return Home.route();
      case CartScreen.routeName:
        return CartScreen.route();
      default:
          return  _errorRoute();
    }
  }

  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('Error')),),
    );
  }
}