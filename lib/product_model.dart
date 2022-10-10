class productModel {
  String title;
  String img;
  int id;
  String quantity;
  int price;

  productModel({
    required this.title,
    required this.img,
    required this.id,
    required this.quantity,
    required this.price,
  });

  factory productModel.fromJson(Map<String, dynamic> fromJson) {
    return productModel(
        title: fromJson[''],
        img: fromJson[''],
        id: fromJson[''],
        quantity: fromJson[''],
        price: fromJson['']);
  }
}


 List<productModel> productdata = [
    productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ),
     productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), productModel(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ),
   
  ];