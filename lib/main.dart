import 'package:flutter/material.dart';
import 'package:flutter_kalkulator/view_models/calculator_view_model.dart';
import 'package:flutter_kalkulator/views/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorViewModel(),
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
