import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:learning_management_system/presentation/resources/string_manager.dart';
import '../bottom_navigationBar/navigationBar_screen.dart';

class Routes{

  // NavigationBarScreen
  static const String navigationBar = '/';

  // Authentication
  static const String signUp = '/signUp';

}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.navigationBar:
        return MaterialPageRoute(builder: (_) => const NavigationBarScreen());
      case Routes.signUp:
        return CustomPageRoute(child: const SignUpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(AppStringNoRouteFound.noRouteFound),
      ),
      body: const Center(
        child: Text(AppStringNoRouteFound.noRouteFound),
      ),
    ),);
  }
}


class CustomPageRoute extends PageRouteBuilder{
  final Widget child;
  CustomPageRoute({
    required this.child,}) : super(
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context,animation,secondaryAnimation) => child,
    transitionsBuilder: (context,animation,anotherAnimation,child){
      animation = CurvedAnimation(
          parent: animation,
          curve: Curves.linear);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1,0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    });
}