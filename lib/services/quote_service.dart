import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:random_quotes/configs/keys.dart';

import '../configs/urls.dart';
import '../models/response/quote_model.dart';

class QuoteService {
  final Dio _dio = Dio();

  Future<QuoteModel?> fetchQuote() async {
    try {
      final response = await _dio.get(Urls.random,
          queryParameters: {'category': 'all', 'count': '1'},
          options: Options(headers: {
            'X-RapidAPI-Key': ApiKeys.xRapidApiKey,
            'X-RapidAPI-Host': ApiKeys.xRapidApiHost,
          }));
      return QuoteModel.fromJson(response.data?[0]);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }
}
