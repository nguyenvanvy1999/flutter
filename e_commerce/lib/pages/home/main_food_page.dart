import 'package:e_commerce/pages/home/food_page_body.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: AppDimension.height45, bottom: AppDimension.height15),
            padding: EdgeInsets.only(
                left: AppDimension.width20, right: AppDimension.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Viet Nam',
                      color: AppColors.mainColor,
                      size: AppDimension.font20,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Ha Noi',
                          color: Colors.black54,
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
                Center(
                  child: GestureDetector(
                    onTap: () => Get.toNamed(RouteHelper.cart),
                    child: Container(
                      width: AppDimension.height45,
                      height: AppDimension.height45,
                      child: Center(
                          child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: AppDimension.iconSize24,
                      )),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppDimension.radius15),
                          color: AppColors.mainColor),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    ));
  }
}
