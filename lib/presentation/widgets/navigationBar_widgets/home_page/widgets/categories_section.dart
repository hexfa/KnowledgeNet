import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import '../../../../constants/categories_list.dart';
import '../../../../resources/string_manager.dart';
import '../../../../resources/values_manager.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: SizedBox(
        height: AppSize.s100,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStringHomePage.categoriesText,
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    AppStringHomePage.seeAllText,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
            SizedBox(
                width: double.infinity,
                height: AppSize.s40,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context,index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
                    child: Chip(
                      backgroundColor: ColorManager.black,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: ColorManager.white,
                      ),
                      ),
                      label: Text(
                          categoriesList[index],
                          style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
