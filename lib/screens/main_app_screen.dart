import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favourites_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class MainAppScreen extends StatefulWidget {
  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {

  int index = 0;

  List<Map<String, Object>> screensList = [
    {
      'screen': CategoriesScreen(),
      'title': 'Categories'
    },
    {
      'screen': FavouritesScreen(),
      'title': 'Favourites'
    },
  ];

  void changeScreen(int currentIndex)
  {
    setState(() {
      index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screensList[index]['title']),),
      drawer: MainAppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),

          ),

          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_solid),
            title: Text('Favourites'),

          ),

        ],

        currentIndex: index,
        onTap: changeScreen,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
      body: screensList[index]['screen'],
    );
  }
}