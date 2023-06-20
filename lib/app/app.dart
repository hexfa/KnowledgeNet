import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management_system/presentation/bottom_navigation/navigation_cubit.dart';
import 'package:learning_management_system/presentation/bottom_navigation/navigation_screen.dart';
import 'package:learning_management_system/presentation/resources/theme_manager.dart';

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
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.navigationBar,
        home: const NavigationScreen(),
      ),
    );
  }
}
