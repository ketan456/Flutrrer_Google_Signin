// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

//String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.id,
    this.email,
    this.profileName,
    this.profileUrl,
  });

  int? id;
  String? email;
  String? profileName;
  String? profileUrl;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    id: json["id"],
    email: json["email"],
    profileName: json["profileName"],
    profileUrl: json["profileUrl"],
  );


}
