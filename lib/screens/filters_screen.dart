import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {

  static final id = '/filtersScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'),),
      drawer: MainAppDrawer(),
      body: Container(child: Text('Filters'),),
    );
  }
}