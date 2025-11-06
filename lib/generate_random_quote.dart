import 'package:flutter/material.dart';

class GenerateRandomQuote extends StatelessWidget {
  const GenerateRandomQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/actual quote app background.jpeg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}