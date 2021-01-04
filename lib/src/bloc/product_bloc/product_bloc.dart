import 'package:flutter_task/src/bloc/base_bloc.dart';
import 'package:flutter_task/src/model/request/product/product_request.dart';
import 'package:flutter_task/src/model/response/product/product_response.dart';
import 'package:flutter_task/src/respository/api_respository.dart';
import 'package:flutter_task/src/service/handle_error.dart';

class ProductBloc extends BaseBloc<List<ProductData>> {
  ApiRespository appRepository = ApiRespository();
  List<ProductData> productDataList;

  getproduct(ProductRequest productRequest) async {
    try {
      startLoading("Loading...");

      ProductResponse productResponse = await appRepository.getProduct(productRequest);
      productDataList=productResponse.productDataList;
      addDataToStream(productDataList);
    } catch (e) {
      print(e.toString());
      addErrorToStream(handleError(e));
    }
  }

  getNextProduct(ProductRequest productRequest) async {
    try {
      ProductResponse productResponse =
          await appRepository.getProduct(productRequest);
      productDataList.addAll(productResponse.productDataList);
      addDataToStream(productDataList);
    } catch (e) {
      unNotifiedErrorToStream(handleError(e), productDataList);
    }
  }
}
