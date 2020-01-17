import 'dart:async';

class FutureService {
  Future<String> upperCaseString(String letter) async => Future.delayed(Duration(seconds: 4), () => letter.toUpperCase());
}