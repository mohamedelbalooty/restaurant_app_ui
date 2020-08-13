import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_modifiyedAppBar.dart';

Widget customMealImage(height, width, image, context){
  return Container(
            height: height / 2,
            color: KMainColor,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                customModifiedAppBar(context),
                Container(
                  width: width,
                  height: height / 2 - 100.0,
                  child: Image(
                    height: height > 360.0 ? 200 : 220,
                    width: height > 360.0 ? 200 : 220,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ],
            ),
          );
}