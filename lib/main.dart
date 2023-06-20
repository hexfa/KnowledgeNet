import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorManager.black,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: ColorManager.black,
    systemNavigationBarIconBrightness: Brightness.light
  ),
  );
  runApp(MyApp());
}

