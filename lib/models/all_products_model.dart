class AllProductsModel {
  bool? status;
  HomeData? data;

  AllProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = HomeData.fromJson(json['data']);
  }
}

class HomeData {
  List<Banners> banners = [];
  List<products> product = [];
  // List<products>? product;
  HomeData.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      json['banners'].forEach((element) {
        banners.add(Banners.fromJson(element));
      });
    }
    if (json['products'] != null || json['products'].isEmpty) {
      json['products'].forEach((element) {
       
        product.add(products.fromJson(element));
      });
    }
  }
}

class Banners {
  int? id;
  String? image;

  Banners.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    id = json['id'];
  }
}

class products {
  dynamic id;
  double? price;
  dynamic oldPrice;
  dynamic discount;
  String? image;
  String? name;
  String? description;
  bool? inFavorite;
  bool? inCart;

  products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'].toDouble();
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    inFavorite = json['in_favorites'];
    inCart = json['in_cart'];
  }
}















// دا مموديل الموقع
/*class AllProductsModel {
  bool? status;
  bool? message;
  Data? data;

  AllProductsModel({this.status, this.message, this.data});

  AllProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<Banners>? banners;
  List<Products>? products;
  String? ad;

  Data({this.banners, this.products, this.ad});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(new Banners.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    ad = json['ad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['ad'] = this.ad;
    return data;
  }
}

class Banners {
  int? id;
  String? image;
  dynamic? category;
  dynamic? product;

  Banners({this.id, this.image, this.category, this.product});

  Banners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    category = json['category'];
    product = json['product'];
  }
}

class Products {
  int? id;
  int? price;
  int? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;

  Products(
      {this.id,
      this.price,
      this.oldPrice,
      this.discount,
      this.image,
      this.name,
      this.description,
      this.images,
      this.inFavorites,
      this.inCart});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'].cast<String>();
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }
}
*/



/*class AllProductsModel {
  bool? status;
  DataModel? data;

  AllProductsModel.fromJson(Map<String, dynamic> fromJson) {
    status = fromJson['status'];
    data = DataModel.fromJson(fromJson['data']);
  }
}

class DataModel {
   List<BannerModel>? banners;
  List<ProductModel>? products; 
   
  DataModel.fromJson(Map<String, dynamic> fromJson) {
    fromJson['banners'].forEach((e) {
      banners!.add(BannerModel.fromJson(e));
    });
    fromJson['products'].forEach((e) {
      
      products!.add(ProductModel.fromJson(e));
    });
  }
}

class ProductModel {
   int? id;
   dynamic? price;
   String? image;
   bool? favourites;
   String? name;
  bool? cart;
  ProductModel.fromJson(Map<String, dynamic> fromJson) {
    id = fromJson['id'];
    price = fromJson['price'];
    image = fromJson['image'];
    name=fromJson['name'];
    favourites = fromJson['in_favorites'];
    cart = fromJson['in_cart'];
    
  }
  
}



class BannerModel {
   int? id;
   String? image;

  BannerModel.fromJson(Map<String, dynamic> fromJson) {
    id = fromJson['id'];
    image = fromJson['image'];
  }
}


*/




/*

// دا الاى بى اى القديم

class AllProductsModel {
  String? status;
  List<productModel>? products=[];

  AllProductsModel.fromJson(Map<String,dynamic>fromJson){

    status=fromJson['status'];
    products= fromJson['products'].forEach((element){
      products!.add(element);

    });


  }
}

class productModel {
 int? id ; 
 String? title ;
 String? name ;
String?  product_weight ;
 String ?image ;
 String? details ;
 String ?category ;
 int ?price  ;
 int? rate ;
 String? color;



  productModel.fromJson(Map<String,dynamic>fromJson){

    id=fromJson['id'];
    title=fromJson['title'];
    name=fromJson['name'];
    product_weight=fromJson['product_weight'];
    image=fromJson['image'];
    details=fromJson['details'];
    category=fromJson['category'];
    price=fromJson['price'];
    rate=fromJson['rate'];
    color=fromJson['color'];


  }
}*/


