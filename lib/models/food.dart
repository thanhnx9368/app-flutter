import 'dart:math';
import 'category.dart';

class Food {
  int? id;
  String name;
  String urlImage;
  Duration duration;
  Complexity? complexity;
  List<String> ingredients = [];
  int categoryId;

  Food(
      {this.id,
      required this.name,
      required this.urlImage,
      required this.duration,
      this.complexity,
      required this.ingredients,
      required this.categoryId}) {
    id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
