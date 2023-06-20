import 'package:flutter/material.dart';
import 'package:learning_management_system/app/provider/navigationBar/navigationBar_provider.dart';
import 'package:learning_management_system/app/provider/search/search_provider.dart';
import 'package:learning_management_system/presentation/resources/theme_manager.dart';
import 'package:provider/provider.dart';
import '../presentation/bottom_navigationBar/navigationBar_screen.dart';
import '../presentation/resources/route_manager.dart';



class MyApp extends StatefulWidget {// default constructor
  MyApp._internal(); //private name constructor
  int appState = 0;
  static MyApp instance = MyApp._internal(); // single instance --singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<NavigationBarProvider>(create: (context) => NavigationBarProvider()),
          ChangeNotifierProvider<SearchProvider>(create: (context) => SearchProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.navigationBar,
          home: const NavigationBarScreen(),
        ),);
  }
}
