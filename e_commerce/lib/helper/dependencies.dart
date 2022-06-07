import 'package:e_commerce/controller/popular_product_controller.dart';
import 'package:e_commerce/data/api/api_client.dart';
import 'package:e_commerce/data/repository/popular_product_repo.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(
        appBaseUrl: AppConstants.baseUrl,
      ));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
