import 'package:flutter/material.dart';
import 'package:my_first_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0)),
          gradient: LinearGradient(colors: [Colors.orange, Colors.tealAccent]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${category.content} - ${category.id}",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        ));
  }
}
