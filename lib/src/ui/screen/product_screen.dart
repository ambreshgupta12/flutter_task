import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/src/bloc/builder/builder.dart';
import 'package:flutter_task/src/bloc/product_bloc/product_bloc.dart';
import 'package:flutter_task/src/model/request/product/product_request.dart';
import 'package:flutter_task/src/model/response/product/product_response.dart';
import 'package:flutter_task/src/ui/common_widget/app_progress_indicator.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductBloc productBloc = ProductBloc();
  ScrollController _controller;

  int pageNo = 1;


  void onPaginateData(){
    _controller.addListener(() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        productBloc.getNextProduct(getProductRequest(fldPageNo: ++pageNo));
      }
    });
  }





  @override
  void initState() {
    super.initState();
    productBloc.getproduct(getProductRequest(fldPageNo: pageNo));
    _controller = ScrollController();
    onPaginateData();
  }
  @override
  void dispose() {
    super.dispose();
    productBloc.streamDispose();
    _controller.dispose();
  }




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: ApiStreamBuilder<List<ProductData>>(
        loadingWidget: (String message) =>
            Center(child: AppProgressIndicator()),
        apiDataWidget: (List<ProductData> productDataList) =>
            _bodyWidget(productDataList, size),
        stream: productBloc.apiDataStream,
        errorWidget: (String message) => Center(
          child: Text(message),
        ),
      ),
    );
  }

  ProductRequest getProductRequest({int fldPageNo = 1}) {
    ProductRequest productRequest = ProductRequest();
    productRequest.fldPageNo = fldPageNo;
    return productRequest;
  }

  Widget _bodyWidget(List<ProductData> productDataList, Size size) {
    return GridView.builder(
      controller: _controller,
      itemCount: productDataList.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 6, childAspectRatio: .55),
      itemBuilder: (BuildContext context, int index) {
        return _gridTileWidget(productDataList[index], size);
      },
    );
  }

  Widget _gridTileWidget(ProductData productData, Size size) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CachedNetworkImage(
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress)),
            imageUrl: productData.defaultImage,
            placeholder: (context, url) =>
                Image.asset('assets/images/place_holder.png', scale: 1),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/place_holder.png',
              scale: 1,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // TextOverflow.clip // TextOverflow.fade
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "${productData.name ?? ""}",
                        style: TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 8,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "₹${productData.price ?? ""}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                '₹${productData.price ?? ""}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  "-${productData?.spclPrice ?? ""}%",
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
