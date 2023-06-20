import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../../resources/string_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 65,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(ImageManagerAssets.spline),
          ),
          Positioned(
            top: 300,
            right: 80,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: RotatedBox(
                quarterTurns: 2,
                child: Image.asset(ImageManagerAssets.spline)),
          ),
          const RiveAnimation.asset(RiveManagerAssets.blobs),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15
              ),
              child: const SizedBox(),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15
              ),
              child: const SizedBox(),
            ),
          ),

          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20,
                    vertical: AppPadding.p8
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStringSignUp.headerText,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p20),
                      child: Column(
                        children: [
                          glassButton(
                              TextButton(
                                  onPressed: (){},
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppStringSignUp.signInButtonText,
                                    style: Theme.of(context).textTheme.button,
                                  ),
                                  const SizedBox(
                                    width: AppPadding.p12,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: ColorManager.black,
                                    size: AppSize.s20,
                                  ),
                                ],
                              ),
                              ),
                              0.1,
                              0.5,
                              context),
                          const SizedBox(
                            height: AppSize.s16,
                          ),
                          glassButton(
                              TextButton(
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      AppStringSignUp.signUpButtonText,
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    const SizedBox(
                                      width: AppSize.s12,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: ColorManager.black,
                                      size: AppSize.s20,
                                    ),
                                  ],
                                ),
                              ),
                              0.1,
                              0.5,
                              context)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
