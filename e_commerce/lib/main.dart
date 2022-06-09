import 'package:e_commerce/controller/popular_product_controller.dart';
import 'package:e_commerce/controller/recommended_product_controller.dart';
import 'package:e_commerce/pages/food/populate_food_detail.dart';
import 'package:e_commerce/pages/food/recommend_food_detail.dart';
import 'package:e_commerce/pages/home/main_food_page.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      home: const MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
