import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 1.0),
              )
            ]
          ),
          child: AppBar(
            title: Text(
              'Account',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
        ),
      ),
      backgroundColor: ColorManager.black,
      body: const Text(
          'Account'
      ),
    );
  }
}