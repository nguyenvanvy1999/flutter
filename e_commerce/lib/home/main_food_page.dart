import 'package:e_commerce/home/food_page_body.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: 'Viet Nam',
                    color: AppColors.mainColor,
                    size: 30,
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
                child: Container(
                  width: 45,
                  height: 45,
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor),
                ),
              )
            ],
          ),
        ),
        const FoodPageBody()
      ],
    ));
  }
}
