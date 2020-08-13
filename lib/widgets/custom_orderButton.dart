import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Widget customOrderButton(width){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
    child: RaisedButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
        padding: EdgeInsets.symmetric(vertical: 15.0),
        color: KMainColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.shopping_basket, color: KWhiteColor, size: 20.0,),
            SizedBox(width: 5.0,),
            Text('Order now', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: KWhiteColor,),)
          ],
        ),
      ),
  );
}
