import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widgets/description_with_list_item.dart';

class MealDetailsScreen extends StatelessWidget {
  static final String id = '/mealDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;

    final item = DUMMY_MEALS.firstWhere((element) {
      return element.id == id;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network(item.imageUrl),
              height: 300,
              width: double.infinity,
            ),
            DescriptionWithListWidget(
              title: 'Ingredients',
              list: item.ingredients,
            ),
            DescriptionWithListWidget(
              title: 'Steps',
              list: item.steps,
            ),
          ],
        ),
      ),
    );
  }
}
