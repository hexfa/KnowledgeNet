import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/style_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    textTheme: TextTheme(
      headline1: getBoldStyle(fontSize: AppSize.s40, color: ColorManager.black),
      labelMedium: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white),
      bodyText1: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white),
      bodyText2: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.black),
      button: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorManager.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white),
      unselectedLabelStyle: getRegularStyle(fontSize: AppSize.s14,color: ColorManager.whiteWhitOpacity60)
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorManager.white),
      backgroundColor: ColorManager.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: ColorManager.white,
          width: AppSize.s1
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        backgroundColor: Colors.transparent.withOpacity(0.1),
      )
    )
  );
}