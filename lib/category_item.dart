import 'package:flutter/material.dart';
import 'package:my_first_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.pushNamed(
              context,
              'FoodPage',
              arguments: {'category': category},
            ),
        child: Container(
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              gradient: LinearGradient(
                  colors: [category.color.withOpacity(0.8), category.color],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
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
            )));
  }
}
