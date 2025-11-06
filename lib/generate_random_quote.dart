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
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuoteDisplay()
        ],
      ),
    );
  }
}

class QuoteDisplay extends StatelessWidget {
  const QuoteDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298,
      height: 184,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:24.0, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuoteText(),
              ],
            ),
            AuthorDisplay()
          ],
        ),
      ),
    );
  }
}

class QuoteText extends StatelessWidget {
  const QuoteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Quote Text",
      style: TextStyle(
        fontSize: 32
      ),
    );
  }
}

class AuthorDisplay extends StatelessWidget {
  const AuthorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text(
            "-author",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF414141)
            ),
          ),
        ),
      ],
    );
  }
}