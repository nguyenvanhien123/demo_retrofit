class Services {
  int? code;
  String? error;
  Data? data;
  String? message;
  String? type;

  Services(
      {required this.code,
      required this.error,
      required this.data,
      required this.message,
      required this.type});

  Services.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    error = json['error'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['type'] = this.type;
    return data;
  }
}

class Data {
  int? total;
  int? maxPosition;
  int? count;
  List<ListService>? list;

  Data(
      {required this.total,
      required this.maxPosition,
      required this.count,
      required this.list});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    maxPosition = json['maxPosition'];
    count = json['count'];
    if (json['list'] != null) {
      list = <ListService>[];
      json['list'].forEach((v) {
        list!.add(new ListService.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['maxPosition'] = this.maxPosition;
    data['count'] = this.count;
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListService {
  String? itemCode;
  String? serviceCode;
  String? code;
  String? title;
  String? textSearch;
  String? description;
  int? price;
  String? priceShow;
  String? currencyCode;
  String? menuId;
  String? image;
  int? updatedAt;
  int? createdAt;
  int? itemTime;
  int? featured;
  int? position;
  int? showOnShop;
  int? isShowPrice;

  ListService(
      {required this.itemCode,
      required this.serviceCode,
      required this.code,
      required this.title,
      required this.textSearch,
      required this.description,
      required this.price,
      required this.priceShow,
      required this.currencyCode,
      required this.menuId,
      required this.image,
      required this.updatedAt,
      required this.createdAt,
      required this.itemTime,
      required this.featured,
      required this.position,
      required this.showOnShop,
      required this.isShowPrice});

  ListService.fromJson(Map<String, dynamic> json) {
    itemCode = json['itemCode'];
    serviceCode = json['serviceCode'];
    code = json['code'];
    title = json['title'];
    textSearch = json['textSearch'];
    description = json['description'];
    price = json['price'];
    priceShow = json['priceShow'];
    currencyCode = json['currencyCode'];
    menuId = json['menuId'];
    image = json['image'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    itemTime = json['itemTime'];
    featured = json['featured'];
    position = json['position'];
    showOnShop = json['showOnShop'];
    isShowPrice = json['isShowPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemCode'] = this.itemCode;
    data['serviceCode'] = this.serviceCode;
    data['code'] = this.code;
    data['title'] = this.title;
    data['textSearch'] = this.textSearch;
    data['description'] = this.description;
    data['price'] = this.price;
    data['priceShow'] = this.priceShow;
    data['currencyCode'] = this.currencyCode;
    data['menuId'] = this.menuId;
    data['image'] = this.image;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    data['itemTime'] = this.itemTime;
    data['featured'] = this.featured;
    data['position'] = this.position;
    data['showOnShop'] = this.showOnShop;
    data['isShowPrice'] = this.isShowPrice;
    return data;
  }
}
