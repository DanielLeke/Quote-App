import 'package:get/get.dart';

class GenerateRandomQuoteController extends GetxController {
  final _quote = "".obs;
  final _author = "".obs;

  String get quote => _quote.value;
  String get author => _author.value;
}
