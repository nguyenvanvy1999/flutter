import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/controller/popular_product_controller.dart';
import 'package:e_commerce/controller/recommended_product_controller.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/routers/route_helper.dart';
import 'package:e_commerce/utils/app_constants.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_column.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/icon_and_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = AppDimension.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? SizedBox(
                  height: AppDimension.pageView,
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: popularProducts.popularProductList.length,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position,
                            popularProducts.popularProductList[position]);
                      }),
                )
              : const CircularProgressIndicator(
                  color: AppColors.mainColor,
                );
        }),
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return DotsIndicator(
            dotsCount: popularProducts.popularProductList.isEmpty
                ? 1
                : popularProducts.popularProductList.length,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          );
        }),
        SizedBox(
          height: AppDimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: AppDimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Recommend'),
              SizedBox(
                width: AppDimension.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: '.',
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: AppDimension.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: 'Food pairing',
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
        GetBuilder<RecommendedProductController>(builder: (recommendedProduct) {
          return recommendedProduct.isLoaded
              ? ListView.builder(
                  itemCount: recommendedProduct.recommendedProductList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    late ProductModel product =
                        recommendedProduct.recommendedProductList[index];
                    return GestureDetector(
                      onTap: () =>
                          Get.toNamed(RouteHelper.getRecommendedFood(index)),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: AppDimension.width20,
                            right: AppDimension.width20,
                            bottom: AppDimension.height10),
                        child: Row(
                          children: [
                            Container(
                              height: AppDimension.listViewImgSize,
                              width: AppDimension.listViewImgSize,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppDimension.radius20),
                                  color: Colors.white38,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          '${AppConstants.baseUrl}${AppConstants.uploadUrl}${product.img!}'))),
                            ),
                            Expanded(
                              child: Container(
                                height: AppDimension.listViewTextContSize,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                          AppDimension.radius20),
                                      bottomRight: Radius.circular(
                                          AppDimension.radius20)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: AppDimension.width10,
                                      right: AppDimension.width10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        BigText(
                                            text: recommendedProduct
                                                .recommendedProductList[index]
                                                .name),
                                        SizedBox(
                                          height: AppDimension.height10,
                                        ),
                                        SmallText(
                                            text: product.description!.length >
                                                    50
                                                ? '${product.description.toString().substring(0, 70)} ...'
                                                : product.description!),
                                        SizedBox(
                                          height: AppDimension.height10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            IconAndText(
                                              icon: Icons.circle_sharp,
                                              text: 'Normal',
                                              iconColor: AppColors.iconColor1,
                                            ),
                                            IconAndText(
                                              icon: Icons.location_on,
                                              text: '1.7 km',
                                              iconColor: AppColors.mainColor,
                                            ),
                                            IconAndText(
                                              icon: Icons.access_time_rounded,
                                              text: '32 min',
                                              iconColor: AppColors.iconColor2,
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              : const CircularProgressIndicator(
                  color: AppColors.mainColor,
                );
        })
      ],
    );
  }

  Widget _buildPageItem(
    int index,
    ProductModel popularProduct,
  ) {
    Matrix4 matrix = Matrix4.identity();
    List<double> arr1, arr2 = [];
    double currScale, currTrans;
    arr1 = [1, 1];
    arr2 = [0, 0];
    currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
    currTrans = _height * (1 - currScale) / 2;
    if (index == _currPageValue.floor() + 1) {
      currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      currTrans = _height * (1 - currScale) / 2;
    } else if (index != _currPageValue.floor() &&
        index != _currPageValue.floor() - 1) {
      currScale = 0.8;
      currTrans = _height * (1 - _scaleFactor) / 2;
      arr1 = [1, 1];
      arr2 = [0, 1];
    }
    matrix = Matrix4.diagonal3Values(arr1[0], currScale, arr1[1])
      ..setTranslationRaw(arr2[0], currTrans, arr2[1]);

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Get.toNamed(RouteHelper.getPopularFood(index)),
            child: Container(
              height: AppDimension.pageViewContainer,
              margin: EdgeInsets.only(
                  left: AppDimension.width10, right: AppDimension.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimension.radius30),
                  color: index.isEven
                      ? const Color(0xff69c5df)
                      : const Color(0xff9294cc),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          '${AppConstants.baseUrl}${AppConstants.uploadUrl}${popularProduct.img!}'))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: AppDimension.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: AppDimension.width30,
                  right: AppDimension.width30,
                  bottom: AppDimension.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimension.radius30),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        offset: Offset(0, 5),
                        blurRadius: 5.0),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: AppDimension.height15,
                    left: AppDimension.height15,
                    right: AppDimension.height15),
                child: AppColumn(text: popularProduct.name!),
              ),
            ),
          )
        ],
      ),
    );
  }
}
