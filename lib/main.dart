// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_product_page.dart';
import 'product_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductBloc(),
      child: MaterialApp(
        title: 'Product App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const AddProductPage(),
      ),
    );
  }
}
