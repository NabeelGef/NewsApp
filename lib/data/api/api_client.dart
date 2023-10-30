import 'dart:convert';
import 'package:dio/dio.dart' as dioData ;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


import '../../consts/api_path.dart';
import '../model/news_model.dart';

class ApiClient extends GetxService{
  static Dio dio = Dio();
  static final String appBaseUrl = AppUrls.baseUrl;
  static final String noInternetMessage = 'connection_to_api_server_failed'.tr;
  static final int timeoutInSeconds = 50;
  static late Map<String, String> _mainHeaders;



  static Future<News?> getDataNews({Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {

        dioData.Response response = await dio.get(appBaseUrl,
        options: dioData.Options(
          headers: headers ?? _mainHeaders,
        ),
        ).timeout(Duration(seconds: timeoutInSeconds));
      return response.data;
    } catch (e) {
      if (kDebugMode) {
        print('------------${e.toString()}');
      }
    }
  }



}