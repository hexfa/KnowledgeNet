import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

Widget glassButton(Widget child,double start,double end,BuildContext context){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSize.s4, sigmaY: AppSize.s4),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: AppSize.s60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent.withOpacity(start),
                Colors.purpleAccent.withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30)),
          ),
          child: child,
        ),
      ),
    );
}