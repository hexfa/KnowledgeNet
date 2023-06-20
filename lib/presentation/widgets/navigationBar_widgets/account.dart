import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';

import '../../resources/route_manager.dart';

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
      body: TextButton(
          onPressed: (){
            // Navigator.of(context).push(PageRouteBuilder(
            //     pageBuilder: (context,animation,anotherAnimation){
            //       return SignUpScreen();
            //     },
            //   transitionDuration: Duration(milliseconds: 600),
            //   transitionsBuilder: (context,animation,anotherAnimation,child){
            //       animation = CurvedAnimation(
            //           parent: animation,
            //           curve: Curves.linear);
            //       return SlideTransition(
            //         position: Tween<Offset>(
            //           begin: const Offset(1,0),
            //           end: Offset.zero,
            //         ).animate(animation),
            //         child: child,
            //       );
            //   }
            // ));
            Navigator.pushNamed(context, Routes.signUp);
          },
          child: Text(
            'Account',
            style: Theme.of(context).textTheme.bodyText1,
          ),
      ),
    );
  }
}