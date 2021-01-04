import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_task/src/model/request/product/product_request.dart';
import 'package:flutter_task/src/model/response/product/product_response.dart';
import 'package:flutter_task/src/service/dio_client.dart';

class ApiRespository {
  DioClient dioClient;
  String _baseUrl = "https://phaukat.com/api/";

  ApiRespository() {
    var dio = Dio();
    dioClient = DioClient(_baseUrl, dio);
  }

  Future<ProductResponse> getProduct(ProductRequest productRequest) async {
    var response = await dioClient.post('product', data: productRequest.toJson());
    return ProductResponse.fromJson(json.decode(response));
  }
}
