// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return ProductResponse(
    status: json['status'] as bool,
    statusCode: json['statusCode'] as int,
    fldTotalPage: json['fld_total_page'] as int,
    message: json['message'] as String,
    gridListView: json['grid_list_view'] as int,
    nextPage: json['next_page'] as int,
    productDataList: (json['product_data'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'fld_total_page': instance.fldTotalPage,
      'message': instance.message,
      'grid_list_view': instance.gridListView,
      'next_page': instance.nextPage,
      'product_data': instance.productDataList,
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData(
    id: json['id'] as int,
    unisexType: json['unisex_type'] as String,
    colorId: json['color_id'] as int,
    sizeId: json['size_id'] as int,
    extraPrice: json['extra_price'] as int,
    name: json['name'] as String,
    price: json['price'] as int,
    spclPrice: json['spcl_price'] as int,
    defaultImage: json['default_image'] as String,
    gifImage: json['gif_image'] as String,
    fldTotalRating: json['fld_total_rating'] as int,
    fldRatingCount: json['fld_rating_count'] as int,
    fldReviewCount: json['fld_review_count'] as int,
    isInWishlist: json['isInWishlist'] as bool,
  );
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unisex_type': instance.unisexType,
      'color_id': instance.colorId,
      'size_id': instance.sizeId,
      'extra_price': instance.extraPrice,
      'name': instance.name,
      'price': instance.price,
      'spcl_price': instance.spclPrice,
      'default_image': instance.defaultImage,
      'gif_image': instance.gifImage,
      'fld_total_rating': instance.fldTotalRating,
      'fld_rating_count': instance.fldRatingCount,
      'fld_review_count': instance.fldReviewCount,
      'isInWishlist': instance.isInWishlist,
    };
