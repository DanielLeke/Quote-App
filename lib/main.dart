import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_app/generate_random_quote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color(0xFF269AA2)
      ),
      home: GenerateRandomQuote(),
    );
  }
}
