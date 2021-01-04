import 'package:json_annotation/json_annotation.dart';

part 'product_request.g.dart';

@JsonSerializable()
class ProductRequest {
  ProductRequest({
    this.fldActionType,
    this.fldBrandId,
    this.cartTotal,
    this.fldCatId,
    this.fldSearchTxt,
    this.fldTotalPage,
    this.fldUserId,
    this.gridListView,
    this.fldMaxPrice,
    this.fldMinPrice,
    this.nextPage,
    this.fldPageNo,
    this.fldPincode,
    this.fldSpclPrice,
    this.fldProductPrice,
    this.fldProductQty,
    this.shippingTotal,
    this.statusCode,
    this.totalSellerCount,
  });

  @JsonKey(name: 'fld_action_type')
  int fldActionType;
  @JsonKey(name: 'fld_brand_id')
  String fldBrandId;
  @JsonKey(name: 'cart_total')
  int cartTotal;
  @JsonKey(name: 'fld_cat_id')
  int fldCatId;
  @JsonKey(name: 'fld_search_txt')
  String fldSearchTxt;
  @JsonKey(name: 'fld_total_page')
  int fldTotalPage;
  @JsonKey(name: 'fld_user_id')
  String fldUserId;
  @JsonKey(name: 'grid_list_view')
  int gridListView;
  @JsonKey(name: 'fld_max_price')
  int fldMaxPrice;
  @JsonKey(name: 'fld_min_price')
  int fldMinPrice;
  @JsonKey(name: 'next_page')
  int nextPage;
  @JsonKey(name: 'fld_page_no')
  int fldPageNo;
  @JsonKey(name: 'fld_pincode')
  int fldPincode;
  @JsonKey(name: 'fld_spcl_price')
  int fldSpclPrice;
  @JsonKey(name: 'fld_product_price')
  int fldProductPrice;
  @JsonKey(name: 'fld_product_qty')
  int fldProductQty;
  @JsonKey(name: 'shipping_total')
  int shippingTotal;
  int statusCode;
  @JsonKey(name: 'total_seller_count')
  int totalSellerCount;

  factory ProductRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRequestToJson(this);
}
