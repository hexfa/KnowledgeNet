import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:provider/provider.dart';
import '../../../../../app/provider/search/search_provider.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/string_manager.dart';
import '../../../widgets.dart';
import '../widgets/categories_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController? scrollController;
  bool lastStatus = true;

  bool get isShrink{
    return scrollController != null && scrollController!.hasClients && scrollController!.offset > (AppSize.s260);
  }

  void scrollListener(){
    if(isShrink != lastStatus){
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()..addListener(scrollListener);
  }

  @override
  void dispose() {
    scrollController?.removeListener(scrollListener);
    scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: isShrink ? ColorManager.lightBlack1 : ColorManager.black),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body:
        CustomScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              stretch: true,
              pinned: true,
              backgroundColor: isShrink ? ColorManager.lightBlack1 : ColorManager.black,
              toolbarHeight: AppSize.s0,
              expandedHeight: AppSize.s250,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground],
                  centerTitle: true,
                  background: isShrink ? null :
                  Stack(
                    children: [
                      Container(
                        color: ColorManager.white,
                      ),
                      const Positioned.fill(
                        child: Image(
                          image: AssetImage(
                            ImageManagerAssets.headerHomePage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: isShrink ? ColorManager.lightBlack1 : ColorManager.black,
              toolbarHeight: AppSize.s120,
              pinned: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: DurationConstant.d2000),
                        left: isShrink ? (MediaQuery.of(context).size.width / 2 - 44.5) : AppSize.s0,
                        child: Text(
                          AppStringHomePage.headerText,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Positioned(
                        top: AppSize.s45,
                        left: AppSize.s0,
                        child: SizedBox(
                            width: (MediaQuery.of(context).size.width - AppPadding.p24),
                            height: AppSize.s175,
                          child: Column(
                            children: [
                              SizedBox(
                                width: (MediaQuery.of(context).size.width - AppPadding.p24),
                                height: AppSize.s40,
                                child: TextFormField(
                                  onTap: () {
                                    context.read<SearchProvider>().requestFocus(context: context);
                                  },
                                  focusNode: searchProvider.searchFocusNode,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: AppSize.s6,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                      BorderRadius.circular(AppSize.s4),
                                    ),
                                    focusColor: ColorManager.darkGrey,
                                    filled: true,
                                    fillColor: ColorManager.lightGrey,
                                    prefixIcon: Icon(CupertinoIcons.search,
                                      color: ColorManager.darkWhite1,
                                    ),
                                    hintText: AppStringHomePage.hintSearchBarText,
                                    hintStyle: Theme.of(context).textTheme.labelMedium,
                                  ),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: DurationConstant.d2000),
                                opacity: isShrink ? AppSize.s1 : AppSize.s0,
                                child: const SizedBox(
                                  height: AppSize.s8,
                                ),
                              ),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: DurationConstant.d2000),
                                opacity: isShrink ? AppSize.s1 : AppSize.s0,
                                child: SizedBox(
                                  height: AppSize.s4,
                                  child: Divider(
                                    thickness: AppSize.s1,
                                    color: ColorManager.darkWhite1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  [
                    const CategoriesSection(),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                  ]
              ),
            ),
          ],
        ),
        bottomNavigationBar: signInElevatedButton(onPressed: (){}, context: context),
      ),
    );
  }
}
