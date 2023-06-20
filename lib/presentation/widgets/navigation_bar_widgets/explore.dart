import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: const Text(
          'Explore'
      ),
    );
  }
}