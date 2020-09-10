import 'package:flutter/material.dart';

class DescriptionWithListWidget extends StatelessWidget {
  final list;
  final title;

  DescriptionWithListWidget({this.list, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.all(10),
        ),

        Container(
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        list[index],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )));
            },
            itemCount: list.length,
          ),
        )
      ],
    );
  }
}
