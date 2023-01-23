import 'package:flutter/material.dart';
import 'package:my_first_app/models/category.dart';
import 'package:my_first_app/models/food.dart';
import './fake_data.dart';
import './food_page_detail.dart';

class FoodPage extends StatelessWidget {
  Category? category;

  FoodPage({super.key, this.category});

  static const String routeName = 'FoodPage';

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];

    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category?.id).toList();

    return Scaffold(
        appBar: AppBar(title: Text('Food pages ${category?.content}')),
        body: SafeArea(
          child: Center(
              child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food food = foods[index];
              return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FoodPageDetail(
                            food,
                          ))),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(4),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.hardEdge,
                              child: Center(
                                  child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/images/loading.gif',
                                      image: food.urlImage)))),
                      Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                            child: Row(children: [
                              const Icon(Icons.timer,
                                  color: Colors.white, size: 20),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                    '${food.duration.inMinutes} minutes',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'Shadows_Into_Light')),
                              )
                            ]),
                          )),
                      Positioned(
                        top: 30,
                        right: 30,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                food.complexity.toString().split('.').last,
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 30,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            food.name,
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          )),
        ));
    // TODO: implement build
    throw UnimplementedError();
  }
}
