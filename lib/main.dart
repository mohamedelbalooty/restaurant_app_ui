import 'package:flutter/material.dart';
import 'screeens/home_screen.dart';
import 'screeens/order_screen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        buttonTheme: ButtonThemeData(minWidth: 5),
      ),
      title: 'Restaurant_ui',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        OrderScreen.id: (context) => OrderScreen(),
      },
    );
  }
}
