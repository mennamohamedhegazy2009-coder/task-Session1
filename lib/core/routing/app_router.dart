import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/persentation/home_screen.dart';
import 'package:flutter_application_1/core/routing/routes.dart';
import 'package:flutter_application_1/features/gold/peresentaion/screens/gold_screen.dart';
import 'package:flutter_application_1/features/gold/peresentaion/screens/silverscreen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
       
        case AppRoutes.SilverScreen:
        return MaterialPageRoute(
          builder: (_) => const SilverScreen(),
        );

        case AppRoutes.GoldScreen:
        return MaterialPageRoute(
          builder: (_) => const GoldScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}