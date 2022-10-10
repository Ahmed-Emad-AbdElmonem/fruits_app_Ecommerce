class LoginModel {
  late String token;
  late String tokenType;
  late UserData data;

  LoginModel({
    required this.data,
    required this.token,
    required this.tokenType,
  });

  factory LoginModel.fromJson(Map<String, dynamic> fromJson) {
    return LoginModel(
      token: fromJson['token'],
      tokenType: fromJson['tokenType'],
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

















/* class LoginModel {
  late bool status;
  late String message;

  late UserData data;

  LoginModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory LoginModel.fromJson(Map<String, dynamic> fromJson) {
    return LoginModel(
      status: fromJson['status'],
      message: fromJson['message'],
      data: /*fromJson['data'] != null ?*/
          UserData.fromJson(fromJson['data']),
      /*: null;*/
    );
  }
}

class UserData {
  late int id;
  late String name;
  late String email;
  late String phone;
  late String Image;
  late int points;
  late int credit;
  late String token;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.Image,
    required this.points,
    required this.credit,
    required this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> fromJson) {
    return UserData(
        id: fromJson['id'],
        name: fromJson['id'],
        email: fromJson['email'],
        phone: fromJson['phone'],
        Image: fromJson['Image'],
        points: fromJson['points'],
        credit: fromJson['credit'],
        token: fromJson['token']);
  }
}
*/



