import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_management_system/presentation/constants/navigation_bar_items.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/account.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/explore.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/home_page.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/my_learning.dart';
import 'package:learning_management_system/presentation/widgets/navigation_bar_widgets/wishlist.dart';
import '../resources/icon_manager.dart';
import '../resources/string_manager.dart';
import '../resources/values_manager.dart';
import 'navigation_state.dart';
import 'navigation_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context,state){
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorManager.black,
              unselectedItemColor: ColorManager.whiteWhitOpacity60,
              selectedItemColor: ColorManager.white,
              selectedFontSize: AppSize.s14,
              unselectedFontSize: AppSize.s14,
              currentIndex: state.index,
              showUnselectedLabels: true,
              unselectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle,
              selectedLabelStyle: Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    IconAssets.homeLight,
                    color: ColorManager.white,
                    width: AppSize.s30,
                    height: AppSize.s30,
                  ),
                  label: AppString.home,
                  activeIcon: SvgPicture.asset(
                    IconAssets.home,
                    color: ColorManager.white,
                    width: AppSize.s30,
                    height: AppSize.s30,
                  ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconAssets.searchLight,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
                label: AppString.explore,
                activeIcon: SvgPicture.asset(
                  IconAssets.search,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconAssets.videoPlayerLight,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
                label: AppString.myLearning,
                activeIcon: SvgPicture.asset(
                  IconAssets.videoPlayer,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconAssets.favouriteLight,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
                label: AppString.wishlist,
                activeIcon: SvgPicture.asset(
                  IconAssets.favourite,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconAssets.accountLight,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
                label: AppString.account,
                activeIcon: SvgPicture.asset(
                  IconAssets.account,
                  color: ColorManager.white,
                  width: AppSize.s30,
                  height: AppSize.s30,
                ),
              ),
            ],
            onTap: (index){
                if(index == 0){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.home);
                }else if(index == 1){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.explore);
                }else if(index == 2){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.myLearning);
                }else if(index == 3){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.wishlist);
                }else if(index == 4){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.account);
                }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context,state){
          if(state.navbarItem == NavbarItem.home){
            return const HomePage();
          }else if(state.navbarItem == NavbarItem.explore){
            return const Explore();
          }else if(state.navbarItem == NavbarItem.myLearning){
            return const MyLearning();
          }else if(state.navbarItem == NavbarItem.wishlist){
            return const Wishlist();
          }else if(state.navbarItem == NavbarItem.account){
            return const Account();
          }else{
            return Container();
          }
        },
      )
    );
  }
}
