import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/networking/dio_helper.dart';
import 'package:flutter_application_1/core/routing/app_router.dart';
import 'package:flutter_application_1/core/routing/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await DioHelper.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.homeScreen, 
      onGenerateRoute: appRouter.generateRoute, 
    );
  }
}