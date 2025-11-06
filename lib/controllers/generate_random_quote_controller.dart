import 'package:get/get.dart';

class GenerateRandomQuoteController extends GetxController {
  final _quote = "".obs;
  final _author = "".obs;

  String get quote => _quote.value;
  String get author => _author.value;

  void getRandomQuote() async {
    final serverUrl = Uri.parse("https://quote-app-backend-d8ga.onrender.com/randomquote");
  }
}
