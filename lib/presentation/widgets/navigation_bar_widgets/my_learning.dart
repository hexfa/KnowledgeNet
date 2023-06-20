import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: const Text(
          'MyLearning'
      ),
    );
  }
}