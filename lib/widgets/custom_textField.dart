import 'package:flutter/material.dart';

import '../constants.dart';

Widget customTextField() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
    child: TextField(
      cursorColor: KFontColor,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: KFontColor,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: KFontColor,
            width: 1.5,
          ),
        ),
        hintText: 'Search here',
        hintStyle: TextStyle(
          color: KFontColor,
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
        ),
        prefixIcon: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.search,
            size: 30.0,
            color: KFontColor,
          ),
        ),
      ),
    ),
  );
}
