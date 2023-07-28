class ChangeFavoritesModel {

  bool? status;

  String? message;
  
  ChangeFavoritesModel.fromJson(Map<String, dynamic> fromJson) {

    status = fromJson['status'];

    message = fromJson['message'];
  }
}
