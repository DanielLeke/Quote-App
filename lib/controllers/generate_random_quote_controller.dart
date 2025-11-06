import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GenerateRandomQuoteController extends GetxController {
  final _quote = "".obs;
  final _author = "".obs;

  String get quote => _quote.value;
  String get author => _author.value;

  Future<Quote> getRandomQuote() async {
    final serverUrl = Uri.parse(
      "https://quote-app-backend-d8ga.onrender.com/randomquote",
    );
    final quoteInfo = await http.get(serverUrl);
    final decodedData = json.decode(quoteInfo.body);
    Quote randomQuote = Quote.fromJson(decodedData);
    return randomQuote;
  }

  void displayQuoteInfo() async {
    Quote randomQuote = await getRandomQuote();
    _quote.value = randomQuote.quote;
    _author.value = randomQuote.author;
  }
}

class Quote {
  final String quote;
  final String author;

  Quote({required this.quote, required this.author});

  factory Quote.fromJson(Map<String, dynamic> jsonData) {
    final String quote = jsonData['quote'];
    final String author = jsonData['author'];

    return Quote(quote: quote, author: author);
  }
}
