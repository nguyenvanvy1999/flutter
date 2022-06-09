import 'package:e_commerce/controller/recommended_product_controller.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendFoodDetailPage extends StatelessWidget {
  int pageId;
  RecommendFoodDetailPage({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Get.toNamed(RouteHelper.getInitial()),
                    child: const AppIcon(icon: Icons.clear)),
                const AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                child: Center(
                    child: BigText(
                  text: product.name!,
                  size: AppDimension.font26,
                )),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppDimension.radius20),
                        topRight: Radius.circular(AppDimension.radius20)),
                    color: Colors.white),
              ),
              preferredSize: const Size.fromHeight(20),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  '${AppConstants.baseUrl}${AppConstants.uploadUrl}${product.img!}',
                  width: double.maxFinite,
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: AppDimension.width20, right: AppDimension.width20),
                child: ExpandableTextWidget(text: product.description!),
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: AppDimension.width20,
                right: AppDimension.width20,
                top: AppDimension.height10,
                bottom: AppDimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: AppDimension.iconSize25,
                ),
                BigText(
                  text: '\$${product.price!} X 0',
                  color: AppColors.mainBlackColor,
                  size: AppDimension.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: AppDimension.iconSize25,
                )
              ],
            ),
          ),
          Container(
            height: AppDimension.bottomHeighBar,
            padding: EdgeInsets.only(
                top: AppDimension.height30,
                bottom: AppDimension.height30,
                left: AppDimension.width20,
                right: AppDimension.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppDimension.radius20 * 2),
                  topRight: Radius.circular(AppDimension.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: AppDimension.height20,
                        bottom: AppDimension.height20,
                        left: AppDimension.width20,
                        right: AppDimension.width20),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimension.radius20),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: AppDimension.height20,
                      bottom: AppDimension.height20,
                      left: AppDimension.width20,
                      right: AppDimension.width20),
                  child: Center(
                    child: BigText(
                      text: '\$10 | Add to cart',
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimension.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
