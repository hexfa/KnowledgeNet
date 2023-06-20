import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

Widget glassButton(
    {
      required Widget child,
      required double startOpacity,
      required double endOpacity,
      required BuildContext context,
      required double heightSize,
      required double radiusSize,
    }){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSize.s4, sigmaY: AppSize.s4),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: heightSize,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent.withOpacity(startOpacity),
                Colors.purpleAccent.withOpacity(endOpacity),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.all(Radius.circular(radiusSize)),
          ),
          child: child,
        ),
      ),
    );
}


BottomNavigationBarItem customNavigationBar(
    {required Color color, required Color activeColor, required double iconSize,required String labelText,required IconData icon,required IconData activeIcon}
    ){
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: color,
      size: iconSize,
    ),
    label: labelText,
    activeIcon: Icon(
      activeIcon,
      color: activeColor,
      size: iconSize,
    ),
  );
}