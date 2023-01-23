import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/food.dart';

final FAKE_CATEGORIES = [
  Category(id: 1, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.pink),
  Category(id: 4, content: 'Italian', color: Colors.blueAccent),
  Category(id: 5, content: 'Milk & Yoghurt', color: Colors.deepPurple),
  Category(id: 6, content: 'Vegetables', color: Colors.green),
  Category(id: 7, content: 'Fruits', color: Colors.redAccent),
];

var FAKE_FOODS = [
  Food(
      name: "sushi - 寿司",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: const Duration(minutes: 15),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: const Duration(minutes: 20),
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: const Duration(minutes: 15),
      complexity: Complexity.Simple,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: const Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: const Duration(hours: 1, minutes: 5),
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: const Duration(minutes: 20),
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      complexity: Complexity.Hard,
      categoryId: 3),
];
