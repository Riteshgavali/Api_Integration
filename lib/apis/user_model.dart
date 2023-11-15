// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

UserModel userFromJson(String str) => UserModel.fromJson(json.decode(str));

String userToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  Data data;

  UserModel({
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  String typename;

  Data({
    required this.typename,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
      };
}
