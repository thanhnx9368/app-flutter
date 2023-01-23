import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_app/bloc/counter_bloc.dart';
import 'models/food.dart';
import 'package:bloc/bloc.dart';

class FoodPageDetail extends StatelessWidget {
  Food food;
  FoodPageDetail(this.food, {super.key});

  static const String routeName = 'FoodPageDetail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food page ${food.name}')),
      body: Column(children: [
        Center(
          key: Key(food.id.toString()),
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: food.urlImage),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Text('Ingredients:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 35,
              maxHeight: 250,
            ),
            child: ListView.builder(
                itemCount: food.ingredients.length,
                itemBuilder: (context, index) {
                  String ingredient = food.ingredients[index];
                  return Container(
                    key: Key(food.id.toString()),
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
                })),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          key: const Key('totalCount'),
          child: Row(
            children: <Widget>[
              const Text('Số lượng:',
                  style: TextStyle(fontSize: 24, color: Colors.deepPurple)),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BlocBuilder<CounterBloc, int>(
                    builder: (context, state) {
                      return Text('$state',
                          style: const TextStyle(
                              fontSize: 26, color: Colors.black));
                    },
                  )),
            ],
          ),
        ),
      ]),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterBloc>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterBloc>().decrement(),
          ),
        ],
      ),
    );
  }
}
