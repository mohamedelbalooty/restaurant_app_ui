import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
Widget customOfferCard(width, _currentIndex){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Offers & Discounts',
          style: TextStyle(
            color: KBlackColor,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 130.0,
          width: width,
          margin: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: ExactAssetImage('images/offers/offer$_currentIndex.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}