import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_orderButton.dart';
import 'custom_priceCard.dart';

Widget customMealDetail(height, width, _mealDetails){
  return Positioned(
    bottom: 0,
    child: Container(
      height: height / 2,
      width: width,
      decoration: BoxDecoration(
        color: KWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 20.0,
                    color: KFontColor,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    _mealDetails.restaurantName,
                    style: TextStyle(
                      color: KFontColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 80,
                width: width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          _mealDetails.name,
                          style: TextStyle(
                            fontSize: 24.0,
                            color: KBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              _mealDetails.ratting,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              '${_mealDetails.reviews} reviews',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: KFontColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    customPriceCard(_mealDetails.price),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(width: width,),
                  Text(
                    'A restaurant is a business that prepares and serves food and drinks to customers. Meals are generally served and eaten on the premises, but many restaurants also offer take-out and food delivery services.',
                    style: TextStyle(color: KFontColor, fontSize: 16.0, letterSpacing: 0.5, height: 1.5),
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  customOrderButton(width),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}