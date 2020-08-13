import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app_ui/constants.dart';
import 'package:restaurant_app_ui/models/meal_details.dart';
import 'package:restaurant_app_ui/models/meal_name.dart';
import 'package:restaurant_app_ui/widgets/custom_appBar.dart';
import 'package:restaurant_app_ui/widgets/custom_offerCard.dart';
import 'package:restaurant_app_ui/widgets/custom_textField.dart';
import 'order_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _bottomNavigationBarIndex = 0;
  List<MealName> _mealList = [
    MealName(
      mealName: 'Combo Burger',
      mealDetails: [
        MealDetails(
          name: 'Smoked Burger',
          restaurantName: 'Kentucky',
          imagePath: 'images/burger/burger1.png',
          price: '55',
          ratting: '⭐',
          reviews: '24'
        ),
        MealDetails(
          name: 'Cheese Burger',
          restaurantName: 'McDonald\'s',
          imagePath: 'images/burger/burger2.png',
          price: '45',
          ratting: '⭐⭐',
          reviews: '11'
        ),
        MealDetails(
          name: 'Shrimp Burger',
          restaurantName: 'BURGER KING',
          imagePath: 'images/burger/burger3.png',
          price: '60',
          ratting: '⭐⭐⭐',
          reviews: '20'
        ),
        MealDetails(
          name: 'Chicken Burger',
          restaurantName: 'Chick-Fil-A',
          imagePath: 'images/burger/burger4.png',
          price: '65',
          ratting: '⭐⭐⭐⭐',
          reviews: '34'
        ),
      ],
    ),
    MealName(
      mealName: 'Hot dog',
      mealDetails: [
        MealDetails(
            name: 'Michigan',
            restaurantName: 'Kentucky',
            imagePath: 'images/hotdog/hotdog1.png',
            price: '45',
            ratting: '⭐',
            reviews: '28'
        ),

        MealDetails(
            name: 'Italian',
            restaurantName: 'McDonald\'s',
            imagePath: 'images/hotdog/hotdog2.png',
            price: '35',
            ratting: '⭐⭐',
            reviews: '18'
        ),
        MealDetails(
            name: 'Coney',
            restaurantName: 'BURGER KING',
            imagePath: 'images/hotdog/hotdog3.png',
            price: '40',
            ratting: '⭐⭐⭐',
            reviews: '74'
        ),
        MealDetails(
            name: 'Chicago',
            restaurantName: 'Chick-Fil-A',
            imagePath: 'images/hotdog/hotdog4.png',
            price: '39',
            ratting: '⭐⭐⭐⭐',
            reviews: '13'
        ),
      ],
    ),
    MealName(
      mealName: 'Pizza',
      mealDetails: [
        MealDetails(
          name: 'Buffalo',
          restaurantName: 'Kentucky',
          imagePath: 'images/pizza/pizza1.png',
          price: '100',
          ratting: '⭐',
            reviews: '90'
        ),
        MealDetails(
          name: 'Pepper',
          restaurantName: 'McDonald\'s',
          imagePath: 'images/pizza/pizza2.png',
          price: '85',
          ratting: '⭐⭐',
            reviews: '8'
        ),
        MealDetails(
          name: 'Meatza',
          restaurantName: 'BURGER KING',
          imagePath: 'images/pizza/pizza3.png',
          price: '120',
          ratting: '⭐⭐⭐',
            reviews: '39'
        ),
        MealDetails(
          name: 'Margherita',
          restaurantName: 'Chick-Fil-A',
          imagePath: 'images/pizza/pizza4.png',
          price: '90',
          ratting: '⭐⭐⭐⭐',
          reviews: '44'
        ),
      ],
    ),
    MealName(
      mealName: 'French Fries',
      mealDetails: [
        MealDetails(
          name: 'KFC French-Fries',
          restaurantName: 'Kentucky',
          imagePath: 'images/french_fries/french1.png',
          price: '11.5',
          ratting: '⭐',
          reviews: '30'
        ),
        MealDetails(
          name: 'Mac French-Fries',
          restaurantName: 'McDonald\'s',
          imagePath: 'images/french_fries/french2.png',
          price: '15',
          ratting: '⭐⭐',
          reviews: '5'
        ),
        MealDetails(
          name: 'BK French-Fries',
          restaurantName: 'BURGER KING',
          imagePath: 'images/french_fries/french3.png',
          price: '16',
          ratting: '⭐⭐⭐',
          reviews: '10'
        ),
        MealDetails(
          name: 'CFA French-Fries',
          restaurantName: 'Chick-Fil-A',
          imagePath: 'images/french_fries/french4.png',
          price: '12',
          ratting: '⭐⭐⭐⭐',
          reviews: '24'
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KSecondColor,
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              customTextField(),
              _customMealName(context, width, height),
              _customMealCard(context),
              customOfferCard(width, _currentIndex),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationBarIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: KWhiteColor,
        elevation: 0.0,
        iconSize: 30.0,
        fixedColor: KBottomIcon,
        onTap: (int index){
          setState(() {
            _bottomNavigationBarIndex = index;
          });
        },
        items: [
          _customBottomItem(Icons.home, _bottomNavigationBarIndex, 0),
          _customBottomItem(
              _bottomNavigationBarIndex == 1 ? Icons.favorite : Icons.favorite_border,
              _bottomNavigationBarIndex, 1),
          _customBottomItem(Icons.explore, _bottomNavigationBarIndex, 2),
          _customBottomItem(_bottomNavigationBarIndex == 3 ? Icons.person : Icons.person_outline, _bottomNavigationBarIndex, 3),
        ],
      ),
    );
  }
  Widget _customMealName(context, width, height) {
    return Container(
      height: 50.0,
      width: width,
      color: KSecondColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _mealList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: height>360.0 ? 25.0 : 85.0, left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _mealList[index].mealName,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color:
                          _currentIndex == index ? KBlackColor : KFontColor,
                          fontSize: _currentIndex == index ? 16.0 : 14.0,
                          fontWeight: _currentIndex == index
                              ? FontWeight.bold
                              : FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 3.0,
                        width: 40.0,
                        margin: EdgeInsets.only(top: 15.0),
                        color:
                        _currentIndex == index ? KMainColor : KWhiteColor,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
  Widget _customMealCard(context) {
    return Container(
      height: 175.0,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      color: KSecondColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _mealList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                    context,
                    OrderScreen.id,
                    arguments: _mealList[_currentIndex].mealDetails[index]
                );
              },
              child: Container(
                height: 175.0,
                width: 150.0,
                margin: EdgeInsets.only(right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: KFontColor,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 105.0,
                      width: 105.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: KCustomContainerColor,
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(
                          _mealList[_currentIndex].mealDetails[index].imagePath,
                        ),
                      ),
                    ),
                    Text(
                      _mealList[_currentIndex].mealDetails[index].name,
                      style: TextStyle(
                        color: KBlackColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      _mealList[_currentIndex].mealDetails[index].restaurantName,
                      style: TextStyle(
                        color: KFontColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  _customBottomItem(IconData icon, _bottomNavigationBarIndex, index){
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _bottomNavigationBarIndex == index ? KBottomIcon : KFontColor,),
      title: Container(),
    );
  }
}
