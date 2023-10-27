import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_provider/controller/slider_provier.dart';
import 'package:slider_provider/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SliderProvider(),
      child: const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
