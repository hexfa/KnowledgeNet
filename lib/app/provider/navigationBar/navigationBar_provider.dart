import 'package:flutter/cupertino.dart';
import '../../../presentation/resources/color_manager.dart';
import '../../../presentation/resources/string_manager.dart';
import '../../../presentation/resources/values_manager.dart';
import '../../../presentation/widgets/navigationBar_widgets/account.dart';
import '../../../presentation/widgets/navigationBar_widgets/home_page/screens/home_page.dart';
import '../../../presentation/widgets/navigationBar_widgets/my_learning.dart';
import '../../../presentation/widgets/widgets.dart';

class NavigationBarProvider with ChangeNotifier{
  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    customNavigationBar(color: ColorManager.lightGrey, activeColor: ColorManager.lightBlue1, iconSize: AppSize.s28, labelText: AppStringNavigationBar.explore, icon: CupertinoIcons.search, activeIcon: CupertinoIcons.search),
    customNavigationBar(color: ColorManager.lightGrey, activeColor: ColorManager.lightBlue1, iconSize: AppSize.s28, labelText: AppStringNavigationBar.myLearning, icon: CupertinoIcons.play_circle, activeIcon: CupertinoIcons.play_circle),
    customNavigationBar(color: ColorManager.lightGrey, activeColor: ColorManager.lightBlue1, iconSize: AppSize.s28,labelText: AppStringNavigationBar.account, icon: CupertinoIcons.person_alt_circle, activeIcon: CupertinoIcons.person_alt_circle),
  ];

  List<BottomNavigationBarItem> get bottomNavigationBarItems => _bottomNavigationBarItems;

  final List<Widget> _bottomNavigationBarWidget = [
    const HomePage(),
    const MyLearning(),
    const Account(),
  ];

  List<Widget> get bottomNavigationBarWidget => _bottomNavigationBarWidget;

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void isSelectedIndex(int value){
    _selectedIndex = value;
    notifyListeners();
  }
}
