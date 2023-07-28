class SearchModel {
  bool? status;
  Data? data;
  //named constructor
  SearchModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  int? currentPage;
  List<DataProduct> data=[] ;
  String? path;
  int? total;
  //named constructor
  Data.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    path = json['path'];
    total = json['total'];
    json['data'].forEach((element) {
      data.add(DataProduct.fromJson(element));
    });
  }
}

class DataProduct {
  dynamic id;
  dynamic price;
  dynamic oldPrice;
  int? discount;
  String? image;
  String? name;
  //named constructor
  DataProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
  }
}
