import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_app/controllers/generate_random_quote_controller.dart';

class GenerateRandomQuote extends StatelessWidget {
  const GenerateRandomQuote({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GenerateRandomQuoteController());
    return Scaffold(body: BackgroundImage());
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/actual quote app background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuoteDisplay(),
            SizedBox(height: 107),
            GenerateQuoteBtn(),
          ],
        ),
      ),
    );
  }
}

class GenerateQuoteBtn extends StatelessWidget {
  const GenerateQuoteBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final randomQuoteController = Get.find<GenerateRandomQuoteController>();
    return ElevatedButton(
      onPressed: () {
        randomQuoteController.displayQuoteInfo();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF269AA2),
        fixedSize: Size(298, 78),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        "Generate Quote",
        style: TextStyle(color: Colors.white, fontSize: 24),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: QuoteText()),
            AuthorDisplay(),
          ],
        ),
      ),
    );
  }
}

class QuoteText extends StatelessWidget {
  const QuoteText({super.key});

  @override
  Widget build(BuildContext context) {
    final randomQuoteController = Get.find<GenerateRandomQuoteController>();
    return Obx(() => AutoSizeText(
        randomQuoteController.quote.isNotEmpty
            ? randomQuoteController.quote.toString()
            : "Quote Text",
        style: TextStyle(
          fontSize: 34,
        ),
        textAlign: TextAlign.center,
        maxLines: 4,
        minFontSize: 16)
    );
  }
}

class AuthorDisplay extends StatelessWidget {
  const AuthorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final randomQuoteController = Get.find<GenerateRandomQuoteController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Obx(
            () => Text(
              randomQuoteController.author.isNotEmpty
                  ? randomQuoteController.author
                  : "-author",
              style: TextStyle(fontSize: 16, color: Color(0xFF414141)),
            ),
          ),
        ),
      ],
    );
  }
}
