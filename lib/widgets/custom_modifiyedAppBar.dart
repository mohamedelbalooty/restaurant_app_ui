import 'package:flutter/material.dart';

import '../constants.dart';

Widget customModifiedAppBar(context){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 25.0, color: KWhiteColor,),
        ),
        Expanded(child: SizedBox(),),
        Icon(Icons.share, size: 25.0, color: KWhiteColor,),
        SizedBox(width: 10.0,),
        Icon(Icons.more_vert, size: 25.0, color: KWhiteColor,),
      ],
    ),
  );
}