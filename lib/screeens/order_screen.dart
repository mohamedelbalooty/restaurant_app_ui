import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/constants.dart';
import 'package:restaurant_app_ui/models/meal_details.dart';
import 'package:restaurant_app_ui/widgets/custom_mealDetail.dart';
import 'package:restaurant_app_ui/widgets/custom_mealImage.dart';

class OrderScreen extends StatelessWidget {
  static String id = 'OrderScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    MealDetails _mealDetails = ModalRoute.of(context).settings.arguments;
    return Material(
      color: KMainColor,
      child: Stack(
        children: <Widget>[
          customMealImage(height, width, _mealDetails.imagePath, context),
          customMealDetail(height, width, _mealDetails),
        ],
      ),
    );
  }
}
