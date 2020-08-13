import 'package:flutter/material.dart';

import '../constants.dart';
import 'background_clipper.dart';

Widget customPriceCard(String price) {
  return Padding(
    padding: EdgeInsets.only(right: 20.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 70.0,
          color: KMainColor,
          child: Center(
            child: Text(
              '\$${price}',
              style: TextStyle(
                  color: KWhiteColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ClipPath(
          clipper: BackgroundClipper(),
          child: Container(
            height: 20.0,
            width: 70.0,
            color: KMainColor,
          ),
        ),
      ],
    ),
  );
}
