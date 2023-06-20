import 'package:equatable/equatable.dart';
import '../constants/navigation_bar_items.dart';



class NavigationState extends Equatable{
  final NavbarItem navbarItem;
  final int index;

  const NavigationState(
      this.navbarItem,
      this.index,);

  @override
  List<Object?> get props => [navbarItem,index];

}