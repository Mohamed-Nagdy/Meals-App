import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_item.dart';
import 'package:meal_app/screens/main_app_screen.dart';
import 'package:meal_app/screens/meal_details_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MealAppHome(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
        textTheme: ThemeData.light().textTheme.copyWith(
          // bodyText1: TextStyle(
          //   color: Colors.white,
          //   fontSize: MediaQuery.of(context).size.width * 0.03,
          // )
        )
      ),
      routes: {
        CategoryItem.id: (context) => CategoryItem(),
        MealDetailsScreen.id: (context) => MealDetailsScreen()
      },
    );
  }
}

class MealAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainAppScreen(),
    );
  }
}