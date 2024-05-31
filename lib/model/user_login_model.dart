import 'dart:convert';

Userloginmodel userloginmodelFromJson(String str) =>
    Userloginmodel.fromJson(json.decode(str));

String userloginmodelToJson(Userloginmodel data) => json.encode(data.toJson());

class Userloginmodel {
  List<User> users;
  int total;
  int skip;
  int limit;

  Userloginmodel({
    required this.users,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory Userloginmodel.fromJson(Map<String, dynamic> json) => Userloginmodel(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class User {
  String email;

  String password;

  User({
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
