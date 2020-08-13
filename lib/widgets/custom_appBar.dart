import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

Widget customAppBar(){
  return AppBar(
    elevation: 0.0,
    backgroundColor: KWhiteColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _customText('Punk', KMainColor),
        _customText('Food', KFontColor),
      ],
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: (){},
      icon: Icon(Icons.menu, size: 30.0, color: KFontColor,),
    ),
    actions: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: Icon(Icons.notifications_none, size: 30.0, color: KFontColor,),
          ),
          Positioned(
            right: 15,
            top: 18,
            child: Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
Widget _customText(String text, Color color){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.8,
    ),
  );
}