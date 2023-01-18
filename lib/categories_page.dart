import 'package:flutter/material.dart';
import 'package:my_first_app/category_item.dart';
import 'package:my_first_app/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 4 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          children: FAKE_CATEGORIES.map((item) => CategoryItem(item)).toList(),
        ));
  }
}
