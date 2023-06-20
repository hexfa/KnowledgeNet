import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/style_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    textTheme: TextTheme(
      labelMedium: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white),
      bodyText1: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.white),
      unselectedLabelStyle: getRegularStyle(fontSize: AppSize.s14,color: ColorManager.whiteWhitOpacity60)
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: getSemiBoldStyle(fontSize: AppSize.s18, color: ColorManager.white),
      backgroundColor: ColorManager.black,
    )
  );
}