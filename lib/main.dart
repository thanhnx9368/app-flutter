import 'package:flutter/material.dart';
import 'package:my_first_app/categories_page.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Foods App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Thanh dep trai'),
            ),
            body: SafeArea(child: CategoriesPage())));
  }
}
