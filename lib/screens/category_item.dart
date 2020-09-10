import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widgets/meal_item_widget.dart';

class CategoryItem extends StatelessWidget {

  static var id = '/categoryItem';

  @override
  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = arguments['id'];
    final title = arguments['title'];
    final filteredItems = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();


    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: ListView.builder(itemBuilder: (context, index){
        return MealItemWidget(
          id: filteredItems[index].id,
          title: filteredItems[index].title,
          imageUrl: filteredItems[index].imageUrl,
          affordability: filteredItems[index].affordability,
          complexity: filteredItems[index].complexity,
          duration: filteredItems[index].duration,
        );
      },
      itemCount: filteredItems.length,
      )
    );
  }
}