import 'package:flutter/material.dart';
import 'models/food.dart';

class FoodPageDetail extends StatelessWidget {
  Food food;
  FoodPageDetail(this.food, {super.key});

  static const String routeName = 'FoodPageDetail';
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(food);
    // Map<String, Food>? arguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, Food>?;
    // food = arguments!['food'];

    return Scaffold(
        appBar: AppBar(title: Text('Food page ${food?.name}')),
        body: Column(children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif', image: food.urlImage),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Text('Ingredients:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: food.ingredients.length,
                  itemBuilder: (context, index) {
                    // String ingredient = food.ingredients[index];
                    String ingredient = food.ingredients[index];

                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                          leading: CircleAvatar(
                              child: Text('#${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ))),
                          title: Text(ingredient,
                              style: const TextStyle(fontSize: 20))),
                    );
                  }))
        ]));
  }
}
