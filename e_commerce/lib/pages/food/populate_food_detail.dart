import 'package:e_commerce/controller/cart_controller.dart';
import 'package:e_commerce/controller/popular_product_controller.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_column.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularFoodDetailPage extends StatelessWidget {
  final int pageId;
  const PopularFoodDetailPage({Key? key, required this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PopularProductController popularProductController =
        Get.find<PopularProductController>();
    var product = popularProductController.popularProductList[pageId];
    popularProductController.initProduct(Get.find<CartController>(), product);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: AppDimension.populateFoodImgSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              '${AppConstants.baseUrl}${AppConstants.uploadUrl}${product.img!}'))),
                )),
            Positioned(
                left: AppDimension.width20,
                right: AppDimension.width20,
                top: AppDimension.height45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Get.toNamed(RouteHelper.getInitial()),
                        child: const AppIcon(icon: Icons.arrow_back_ios)),
                    GetBuilder<PopularProductController>(
                        builder: (popularProduct) {
                      return Stack(
                        children: [
                          const AppIcon(icon: Icons.shopping_cart_outlined),
                          popularProduct.totalItems >= 1
                              ? Positioned(
                                  right: 0,
                                  left: 0,
                                  child: GestureDetector(
                                    onTap: () => Get.toNamed(RouteHelper.cart),
                                    child: const AppIcon(
                                      icon: Icons.circle,
                                      size: 20,
                                      iconColor: Colors.transparent,
                                      backgroundColor: AppColors.mainColor,
                                    ),
                                  ),
                                )
                              : Container(),
                          popularProduct.totalItems >= 1
                              ? Positioned(
                                  right: 3,
                                  left: 3,
                                  child: BigText(
                                    text: popularProduct.totalItems.toString(),
                                    color: Colors.white,
                                    size: 12,
                                  ))
                              : Container()
                        ],
                      );
                    })
                  ],
                )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: AppDimension.populateFoodImgSize - 20,
                child: Container(
                    padding: EdgeInsets.only(
                        left: AppDimension.width20,
                        right: AppDimension.width20,
                        top: AppDimension.height20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppDimension.radius20),
                            topLeft: Radius.circular(AppDimension.radius20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppColumn(
                          text: product.name!,
                        ),
                        SizedBox(
                          height: AppDimension.height20,
                        ),
                        BigText(text: 'Introduce'),
                        SizedBox(
                          height: AppDimension.height20,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text: product.description!),
                          ),
                        )
                      ],
                    )))
          ],
        ),
        bottomNavigationBar: GetBuilder<PopularProductController>(
          builder: (popularProduct) {
            return Container(
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
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => popularProduct.setQuantity(false),
                            child: const Icon(
                              Icons.remove,
                              color: AppColors.signColor,
                            ),
                          ),
                          SizedBox(
                            width: AppDimension.width10 / 2,
                          ),
                          BigText(text: popularProduct.inCartItems.toString()),
                          SizedBox(
                            width: AppDimension.width10 / 2,
                          ),
                          GestureDetector(
                            onTap: () => popularProduct.setQuantity(true),
                            child: const Icon(
                              Icons.add,
                              color: AppColors.signColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: AppDimension.height20,
                          bottom: AppDimension.height20,
                          left: AppDimension.width20,
                          right: AppDimension.width20),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            popularProduct.addItem(product);
                          },
                          child: BigText(
                            text: '\$${product.price!} | Add to cart',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppDimension.radius20),
                          color: AppColors.mainColor),
                    )
                  ],
                ));
          },
        ));
  }
}
