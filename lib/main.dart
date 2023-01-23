import 'package:flutter/material.dart';
import 'package:my_first_app/categories_page.dart';
import 'package:my_first_app/food_page.dart';
import 'package:bloc/bloc.dart';
import 'package:my_first_app/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Foods App',
        initialRoute: '/',
        routes: {
          CategoriesPage.routeName: (context) => CategoriesPage(),
          FoodPage.routeName: (context) => FoodPage(),
        },
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Pacifico'),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Foods App'),
            ),
            body: SafeArea(child: CategoriesPage())));
  }
}
