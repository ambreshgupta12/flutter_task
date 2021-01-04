import 'package:json_annotation/json_annotation.dart';
part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  ProductResponse({
    this.status,
    this.statusCode,
    this.fldTotalPage,
    this.message,
    this.gridListView,
    this.nextPage,
    this.productDataList,
  });

  bool status;
  int statusCode;
  @JsonKey(name: 'fld_total_page')
  int fldTotalPage;
  String message;
  @JsonKey(name: 'grid_list_view')
  int gridListView;
  @JsonKey(name: 'next_page')
  int nextPage;
  @JsonKey(name: 'product_data')
  List<ProductData> productDataList;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}

@JsonSerializable()
class ProductData {
  ProductData({
    this.id,
    this.unisexType,
    this.colorId,
    this.sizeId,
    this.extraPrice,
    this.name,
    this.price,
    this.spclPrice,
    this.defaultImage,
    this.gifImage,
    this.fldTotalRating,
    this.fldRatingCount,
    this.fldReviewCount,
    this.isInWishlist,
  });

  int id;
  @JsonKey(name: 'unisex_type')
  String unisexType;
  @JsonKey(name: 'color_id')
  int colorId;
  @JsonKey(name: 'size_id')
  int sizeId;
  @JsonKey(name: 'extra_price')
  int extraPrice;
  String name;
  int price;
  @JsonKey(name: 'spcl_price')
  int spclPrice;
  @JsonKey(name: 'default_image')
  String defaultImage;
  @JsonKey(name: 'gif_image')
  String gifImage;
  @JsonKey(name: 'fld_total_rating')
  int fldTotalRating;
  @JsonKey(name: 'fld_rating_count')
  int fldRatingCount;
  @JsonKey(name: 'fld_review_count')
  int fldReviewCount;
  bool isInWishlist;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}
