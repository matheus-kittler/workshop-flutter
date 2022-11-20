import 'dart:convert';

import 'package:button_count/model/recover.dart';
import 'package:dio/dio.dart';

class PageRepository {
  // Dio dio;
  //
  // PageRepository(this.dio);
  //
  // Future<List<Recover>> findAll() {
  //   return dio.get('/data.json', options: {
  //
  //   }).then((value) => null)
  // }
  
  // late Response response;
  // Dio dio = Dio();
  // response = await dio.get('https://gb-mobile-app-teste.s3.amazonaws.com/data.json');
  // var listRecovers = (response.data as List).map((item) {
  //   return Recover.fromJson(item);
  // }).toList();

  final dio = Dio();
  findAll() async {
    Response response =
    await dio.get('https://gb-mobile-app-teste.s3.amazonaws.com/data.json');
    return response.data;
  }
}
