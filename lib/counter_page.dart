import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_app/bloc/counter_bloc.dart';
import 'package:my_first_app/food_page_detail.dart';
import 'package:my_first_app/models/food.dart';

class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  Food food;
  CounterPage(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => CounterBloc(),
      child: FoodPageDetail(food),
    ));
  }
}
