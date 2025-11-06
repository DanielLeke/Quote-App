import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GenerateRandomQuoteController extends GetxController {
  final _quote = "".obs;
  final _author = "".obs;

  String get quote => _quote.value;
  String get author => _author.value;

  Future<void> getRandomQuote() async {
    final serverUrl = Uri.parse(
      "https://quote-app-backend-d8ga.onrender.com/randomquote",
    );
    final quoteInfo = await http.get(serverUrl);
  }
}
