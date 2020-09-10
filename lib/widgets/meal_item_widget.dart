import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meal_details_screen.dart';

class MealItemWidget extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItemWidget(
      {this.id,
      this.imageUrl,
      this.title,
      this.duration,
      this.complexity,
      this.affordability,});

  String get complexityText {
    switch (complexity) {
      case Complexity.Challenging:
        return 'Challenging';
        break;

      case Complexity.Hard:
        return 'Hard';
        break;

      case Complexity.Simple:
        return 'Simple';
        break;

      default:
        return 'Unknown';
        break;
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;

      case Affordability.Luxurious:
        return 'Luxurious';
        break;

      case Affordability.Pricey:
        return 'Pricey';
        break;

      default:
        return 'Unknown';
        break;
    }
  }

  void gotoMealDetailsScreen(BuildContext context)
  {
    Navigator.of(context).pushNamed(MealDetailsScreen.id, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){gotoMealDetailsScreen(context);},
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  color: Colors.black38,
                  width: double.infinity,
                  height: 250,
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Container(
                      width: 300,
                      child: Text(
                        title,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration Min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexityText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordabilityText)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
