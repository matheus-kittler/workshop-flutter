import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

void main() async {
  var dio = Dio();
  final response = await dio.get(
      'https://gb-mobile-app-teste.s3.amazonaws.com/'
  );
  if (kDebugMode) {
    print(response.data.toString());
  }
}