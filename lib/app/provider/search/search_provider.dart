import 'package:flutter/cupertino.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

class SearchProvider with ChangeNotifier{

  final FocusNode _searchFocusNode = FocusNode();
  FocusNode get searchFocusNode => _searchFocusNode;


  void requestFocus({required BuildContext context}){
      FocusScope.of(context).requestFocus(searchFocusNode);
      notifyListeners();
  }

  ScrollController? scrollController;

  bool lastStatus = true;

  bool get isShrink{
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (AppSize.s170);
  }


  void scrollListener(){
    if(isShrink != lastStatus){
        lastStatus = isShrink;
        notifyListeners();
    }
  }

  void initialScrollControl(){
    scrollController = ScrollController()..addListener(scrollListener);
    notifyListeners();
  }

  void disposeScrollControl(){
    scrollController?.removeListener(scrollListener);
    scrollController?.dispose();
  }

}