/*class LoginModel {
  late String? token;
  late String? tokenType;
  late UserData? data;

  LoginModel({
     this.data,
     this.token,
     this.tokenType,
  });

  factory LoginModel.fromJson(Map<String, dynamic> fromJson) {
    return LoginModel(
      token: fromJson['access_token'],
      tokenType: fromJson['token_type'],
      data: /*fromJson['data'] != null ?*/
          UserData.fromJson(fromJson['user'] /*?? null*/),
      /*: null;*/
    );
  }
}

class UserData {
  late int id;
  late String name;
  late String email;

  UserData({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserData.fromJson(Map<String, dynamic> fromJson) {
    return UserData(
      id: fromJson['id'],
      name: fromJson['name'],
      email: fromJson['email'],
    );
  }
}


*/

class LoginModel {
  bool? status;
  String? message;

  UserData? data;

  LoginModel({
    this.data,
    this.message,
    this.status,
  });

  LoginModel.fromJson(Map<String, dynamic> Json) {
    status = Json['status'];
    message = Json['message'];
    data =Json['data'] != null ? UserData.fromJson(Json['data']) : null;
  }
}

class UserData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  UserData({
     this.id,
     this.name,
     this.email,
     this.phone,
     this.image,
    this.points,
    this.credit,
     this.token,
  });

  UserData.fromJson(Map<String, dynamic> fromJson) {
    id = fromJson['id'];
    name = fromJson['name'];
    email = fromJson['email'];
    phone = fromJson['phone'];
    image = fromJson['image'];
    points = fromJson['points'];
    credit = fromJson['credit'];
    token = fromJson['token'];
  }
}
