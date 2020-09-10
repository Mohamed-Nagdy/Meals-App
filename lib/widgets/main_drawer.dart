import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Theme.of(context).accentColor,
            alignment: Alignment.center,
            child: Text(
              'Meal App',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 36,
              ),
            ),
          ),

          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
            title: Text('Meals', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
            leading: Icon(Icons.restaurant_menu),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FiltersScreen.id);
            },
            title: Text('Filters', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
