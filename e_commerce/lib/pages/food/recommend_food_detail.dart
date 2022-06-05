import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

class RecommendFoodDetailPage extends StatelessWidget {
  const RecommendFoodDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                child: Center(
                    child: BigText(
                  text: 'Chinese Side',
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
              background: Image.asset('assets/image/food0.png',
                  width: double.maxFinite, fit: BoxFit.cover),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id semper risus in hendrerit gravida. Sed viverra tellus in hac. Tellus at urna condimentum mattis pellentesque. Purus in massa tempor nec feugiat. Ornare arcu dui vivamus arcu. Cras semper auctor neque vitae tempus quam pellentesque nec. Dictumst quisque sagittis purus sit amet volutpat. Erat imperdiet sed euismod nisi porta. Sit amet aliquam id diam. Etiam non quam lacus suspendisse. Feugiat pretium nibh ipsum consequat nisl vel pretium. Ornare massa eget egestas purus viverra accumsan in nisl nisi. Viverra tellus in hac habitasse. Semper auctor neque vitae tempus quam pellentesque nec.
                        Venenatis lectus magna fringilla urna porttitor rhoncus dolor. Pulvinar elementum integer enim neque. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Molestie a iaculis at erat pellentesque adipiscing commodo. Nibh praesent tristique magna sit amet. Bibendum est ultricies integer quis auctor elit sed. Bibendum ut tristique et egestas quis ipsum suspendisse. In mollis nunc sed id semper risus. Lacinia at quis risus sed vulputate odio ut. Amet mattis vulputate enim nulla aliquet porttitor. Eu sem integer vitae justo eget magna. Eu feugiat pretium nibh ipsum consequat nisl vel. Dictum fusce ut placerat orci.
                        Eu scelerisque felis imperdiet proin fermentum. Viverra maecenas accumsan lacus vel facilisis volutpat est velit egestas. Ut etiam sit amet nisl purus in mollis nunc. Neque vitae tempus quam pellentesque nec nam aliquam sem. Enim nec dui nunc mattis enim ut tellus elementum. Molestie nunc non blandit massa enim. At erat pellentesque adipiscing commodo elit at. Et malesuada fames ac turpis egestas integer eget aliquet. Pharetra pharetra massa massa ultricies mi. Pellentesque sit amet porttitor eget dolor morbi. Egestas diam in arcu cursus euismod quis. Ut sem viverra aliquet eget sit amet tellus cras. Turpis egestas maecenas pharetra convallis posuere morbi leo. Scelerisque viverra mauris in aliquam sem fringilla ut morbi. Eu turpis egestas pretium aenean pharetra magna ac.
                        Nam aliquam sem et tortor consequat id porta. Tortor at auctor urna nunc id. Tempor id eu nisl nunc mi ipsum. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Erat velit scelerisque in dictum non consectetur a erat nam. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris. Placerat duis ultricies lacus sed turpis. Neque viverra justo nec ultrices dui sapien eget. Dapibus ultrices in iaculis nunc sed augue lacus. Dictum fusce ut placerat orci nulla pellentesque. Massa sed elementum tempus egestas sed sed risus pretium quam. Felis donec et odio pellentesque diam volutpat commodo. Neque volutpat ac tincidunt vitae semper quis lectus. Interdum varius sit amet mattis vulputate enim nulla aliquet porttitor. Rhoncus mattis rhoncus urna neque viverra. Urna id volutpat lacus laoreet non. Integer malesuada nunc vel risus commodo viverra maecenas. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.
                        Turpis cursus in hac habitasse platea. Tellus integer feugiat scelerisque varius. Dictum non consectetur a erat nam. Et netus et malesuada fames ac turpis egestas integer. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Ut tellus elementum sagittis vitae. Est ante in nibh mauris cursus mattis molestie. Turpis nunc eget lorem dolor sed viverra ipsum nunc. Integer feugiat scelerisque varius morbi. Adipiscing commodo elit at imperdiet dui. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Phasellus vestibulum lorem sed risus ultricies tristique. Mi in nulla posuere sollicitudin aliquam ultrices. Est lorem ipsum dolor sit amet consectetur.'''),
          )
        ],
      ),
    );
  }
}
