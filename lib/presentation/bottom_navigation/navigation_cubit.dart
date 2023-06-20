import 'package:bloc/bloc.dart';
import 'package:learning_management_system/presentation/bottom_navigation/navigation_state.dart';
import 'package:learning_management_system/presentation/constants/navigation_bar_items.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home,0));

  void getNavBarItem(NavbarItem navbarItem){
    switch(navbarItem){
      case NavbarItem.home:
      emit(const NavigationState(NavbarItem.home, 0));
      break;
      case NavbarItem.explore:
        emit(const NavigationState(NavbarItem.explore, 1));
        break;
      case NavbarItem.myLearning:
        emit(const NavigationState(NavbarItem.myLearning, 2));
        break;
      case NavbarItem.wishlist:
        emit(const NavigationState(NavbarItem.wishlist, 3));
        break;
      case NavbarItem.account:
        emit(const NavigationState(NavbarItem.account, 4));
        break;
    }
  }
}