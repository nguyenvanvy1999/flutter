import 'package:e_commerce/pages/cart/cart_page.dart';
import 'package:e_commerce/pages/food/populate_food_detail.dart';
import 'package:e_commerce/pages/food/recommend_food_detail.dart';
import 'package:e_commerce/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const popularFood = '/popular-food';
  static const recommendedFood = '/recommended-food';
  static const cart = '/cart';

  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getInitial() => initial;
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';
  static String getCart() => cart;

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetailPage(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendFoodDetailPage(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(name: cart, page: () => const CartPage()),
  ];
}
