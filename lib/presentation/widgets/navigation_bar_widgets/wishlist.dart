import 'package:flutter/material.dart';
import '../../resources/color_manager.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: const Text(
          'Wishlist'
      ),
    );
  }
}