import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_column.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetailPage extends StatelessWidget {
  const PopularFoodDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/food0.png'))),
              )),
          Positioned(
              left: AppDimension.width20,
              right: AppDimension.width20,
              top: AppDimension.height45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
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
                      const AppColumn(
                        text: 'Chinese Side',
                      ),
                      SizedBox(
                        height: AppDimension.height20,
                      ),
                      BigText(text: 'Introduce'),
                      SizedBox(
                        height: AppDimension.height20,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id semper risus in hendrerit gravida. Sed viverra tellus in hac. Tellus at urna condimentum mattis pellentesque. Purus in massa tempor nec feugiat. Ornare arcu dui vivamus arcu. Cras semper auctor neque vitae tempus quam pellentesque nec. Dictumst quisque sagittis purus sit amet volutpat. Erat imperdiet sed euismod nisi porta. Sit amet aliquam id diam. Etiam non quam lacus suspendisse. Feugiat pretium nibh ipsum consequat nisl vel pretium. Ornare massa eget egestas purus viverra accumsan in nisl nisi. Viverra tellus in hac habitasse. Semper auctor neque vitae tempus quam pellentesque nec.
                        Venenatis lectus magna fringilla urna porttitor rhoncus dolor. Pulvinar elementum integer enim neque. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Molestie a iaculis at erat pellentesque adipiscing commodo. Nibh praesent tristique magna sit amet. Bibendum est ultricies integer quis auctor elit sed. Bibendum ut tristique et egestas quis ipsum suspendisse. In mollis nunc sed id semper risus. Lacinia at quis risus sed vulputate odio ut. Amet mattis vulputate enim nulla aliquet porttitor. Eu sem integer vitae justo eget magna. Eu feugiat pretium nibh ipsum consequat nisl vel. Dictum fusce ut placerat orci.
                        Eu scelerisque felis imperdiet proin fermentum. Viverra maecenas accumsan lacus vel facilisis volutpat est velit egestas. Ut etiam sit amet nisl purus in mollis nunc. Neque vitae tempus quam pellentesque nec nam aliquam sem. Enim nec dui nunc mattis enim ut tellus elementum. Molestie nunc non blandit massa enim. At erat pellentesque adipiscing commodo elit at. Et malesuada fames ac turpis egestas integer eget aliquet. Pharetra pharetra massa massa ultricies mi. Pellentesque sit amet porttitor eget dolor morbi. Egestas diam in arcu cursus euismod quis. Ut sem viverra aliquet eget sit amet tellus cras. Turpis egestas maecenas pharetra convallis posuere morbi leo. Scelerisque viverra mauris in aliquam sem fringilla ut morbi. Eu turpis egestas pretium aenean pharetra magna ac.
                        Nam aliquam sem et tortor consequat id porta. Tortor at auctor urna nunc id. Tempor id eu nisl nunc mi ipsum. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Erat velit scelerisque in dictum non consectetur a erat nam. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris. Placerat duis ultricies lacus sed turpis. Neque viverra justo nec ultrices dui sapien eget. Dapibus ultrices in iaculis nunc sed augue lacus. Dictum fusce ut placerat orci nulla pellentesque. Massa sed elementum tempus egestas sed sed risus pretium quam. Felis donec et odio pellentesque diam volutpat commodo. Neque volutpat ac tincidunt vitae semper quis lectus. Interdum varius sit amet mattis vulputate enim nulla aliquet porttitor. Rhoncus mattis rhoncus urna neque viverra. Urna id volutpat lacus laoreet non. Integer malesuada nunc vel risus commodo viverra maecenas. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.
                        Turpis cursus in hac habitasse platea. Tellus integer feugiat scelerisque varius. Dictum non consectetur a erat nam. Et netus et malesuada fames ac turpis egestas integer. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Ut tellus elementum sagittis vitae. Est ante in nibh mauris cursus mattis molestie. Turpis nunc eget lorem dolor sed viverra ipsum nunc. Integer feugiat scelerisque varius morbi. Adipiscing commodo elit at imperdiet dui. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Phasellus vestibulum lorem sed risus ultricies tristique. Mi in nulla posuere sollicitudin aliquam ultrices. Est lorem ipsum dolor sit amet consectetur.'''),
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
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
                borderRadius: BorderRadius.circular(AppDimension.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: AppDimension.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: AppDimension.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
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
                child: BigText(
                  text: '\$10 | Add to cart',
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimension.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
