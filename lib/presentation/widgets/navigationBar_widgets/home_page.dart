import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import '../../resources/color_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey<RefreshIndicatorState>();
    Future onRefresh() async{
      await Future.delayed(const Duration(seconds: 4));
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: onRefresh,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: AppSize.s300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image(
                    image: AssetImage(
                      ImageManagerAssets.headerHomePage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverAppBar(
                pinned: true,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: Container(
                    width: double.infinity,
                    height: AppSize.s40,
                    color: ColorManager.white,
                    child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: AppSize.s1,
                          color: Colors.grey,
                        ),
                          borderRadius: BorderRadius.circular(AppPadding.p12)
                      )
                    ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context,index) => Card(
                        child: Text('item: ${index +1}'),
                      ),
                    childCount: 50
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
