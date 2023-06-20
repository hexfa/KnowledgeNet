import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:provider/provider.dart';
import '../../app/provider/navigationBar/navigationBar_provider.dart';
import '../resources/values_manager.dart';


class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('ffff');
    return Consumer<NavigationBarProvider>(
      builder: (context,navigationBarItems,_){
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorManager.black,
              unselectedItemColor: ColorManager.lightGrey,
              selectedItemColor: ColorManager.lightBlue1,
              selectedFontSize: AppSize.s14,
              unselectedFontSize: AppSize.s14,
              showUnselectedLabels: true,
              currentIndex: navigationBarItems.selectedIndex,
              unselectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle,
              selectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
              items: navigationBarItems.bottomNavigationBarItems,
              onTap: (value){
                navigationBarItems.isSelectedIndex(value);
              },
            ),
          body: navigationBarItems.bottomNavigationBarWidget[navigationBarItems.selectedIndex],
        );
      }
    );
  }
}
