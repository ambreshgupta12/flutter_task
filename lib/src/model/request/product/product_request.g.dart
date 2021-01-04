// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) {
  return ProductRequest(
    fldActionType: json['fld_action_type'] as int,
    fldBrandId: json['fld_brand_id'] as String,
    cartTotal: json['cart_total'] as int,
    fldCatId: json['fld_cat_id'] as int,
    fldSearchTxt: json['fld_search_txt'] as String,
    fldTotalPage: json['fld_total_page'] as int,
    fldUserId: json['fld_user_id'] as String,
    gridListView: json['grid_list_view'] as int,
    fldMaxPrice: json['fld_max_price'] as int,
    fldMinPrice: json['fld_min_price'] as int,
    nextPage: json['next_page'] as int,
    fldPageNo: json['fld_page_no'] as int,
    fldPincode: json['fld_pincode'] as int,
    fldSpclPrice: json['fld_spcl_price'] as int,
    fldProductPrice: json['fld_product_price'] as int,
    fldProductQty: json['fld_product_qty'] as int,
    shippingTotal: json['shipping_total'] as int,
    statusCode: json['statusCode'] as int,
    totalSellerCount: json['total_seller_count'] as int,
  );
}

Map<String, dynamic> _$ProductRequestToJson(ProductRequest instance) =>
    <String, dynamic>{
      'fld_action_type': instance.fldActionType,
      'fld_brand_id': instance.fldBrandId,
      'cart_total': instance.cartTotal,
      'fld_cat_id': instance.fldCatId,
      'fld_search_txt': instance.fldSearchTxt,
      'fld_total_page': instance.fldTotalPage,
      'fld_user_id': instance.fldUserId,
      'grid_list_view': instance.gridListView,
      'fld_max_price': instance.fldMaxPrice,
      'fld_min_price': instance.fldMinPrice,
      'next_page': instance.nextPage,
      'fld_page_no': instance.fldPageNo,
      'fld_pincode': instance.fldPincode,
      'fld_spcl_price': instance.fldSpclPrice,
      'fld_product_price': instance.fldProductPrice,
      'fld_product_qty': instance.fldProductQty,
      'shipping_total': instance.shippingTotal,
      'statusCode': instance.statusCode,
      'total_seller_count': instance.totalSellerCount,
    };
