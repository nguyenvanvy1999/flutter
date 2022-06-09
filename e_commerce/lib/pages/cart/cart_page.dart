import 'package:e_commerce/controller/cart_controller.dart';
import 'package:e_commerce/models/cart_model.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: AppDimension.height20 + 3,
                left: AppDimension.width20,
                right: AppDimension.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(
                      icon: Icons.arrow_back_ios,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: AppDimension.iconSize24,
                    ),
                    SizedBox(
                      width: AppDimension.width20 * 5,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(RouteHelper.initial),
                      child: AppIcon(
                        icon: Icons.home_outlined,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        iconSize: AppDimension.iconSize24,
                      ),
                    ),
                    AppIcon(
                      icon: Icons.shopping_cart,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: AppDimension.iconSize24,
                    )
                  ],
                )),
            Positioned(
                top: AppDimension.height20 * 5,
                left: AppDimension.width20,
                right: AppDimension.width20,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    top: AppDimension.height15,
                  ),
                  color: Colors.white,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: GetBuilder<CartController>(
                        builder: (cartController) {
                          return ListView.builder(
                              itemCount: cartController.getItems.length,
                              itemBuilder: (_, index) {
                                CartModel product =
                                    cartController.getItems[index];
                                return SizedBox(
                                  height: 100,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: AppDimension.height20 * 5,
                                        height: AppDimension.height20 * 5,
                                        margin: EdgeInsets.only(
                                            bottom: AppDimension.height10),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    '${AppConstants.baseUrl}${AppConstants.uploadUrl}${product.img!}')),
                                            borderRadius: BorderRadius.circular(
                                                AppDimension.radius20)),
                                      ),
                                      SizedBox(
                                        width: AppDimension.width10,
                                      ),
                                      Expanded(
                                          child: SizedBox(
                                        height: AppDimension.height20 * 5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            BigText(
                                              text: product.name!,
                                              color: Colors.black54,
                                              size: 20,
                                            ),
                                            SmallText(text: 'Spicy'),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BigText(
                                                  text: '\$33',
                                                  color: Colors.red,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          AppDimension.height10,
                                                      bottom:
                                                          AppDimension.height10,
                                                      left:
                                                          AppDimension.width10,
                                                      right:
                                                          AppDimension.width10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppDimension
                                                                .radius20),
                                                    color: Colors.white,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: AppColors
                                                              .signColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: AppDimension
                                                                .width10 /
                                                            2,
                                                      ),
                                                      BigText(
                                                          text: product
                                                              .quantity!
                                                              .toString()),
                                                      SizedBox(
                                                        width: AppDimension
                                                                .width10 /
                                                            2,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: AppColors
                                                              .signColor,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                );
                              });
                        },
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
