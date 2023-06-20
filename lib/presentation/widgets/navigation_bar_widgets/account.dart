import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: const Text(
          'Account'
      ),
    );
  }
}