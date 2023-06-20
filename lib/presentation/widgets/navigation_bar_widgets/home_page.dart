import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Text(
        'HomePage',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
