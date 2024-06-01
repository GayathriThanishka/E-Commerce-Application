


import 'dart:convert';

List<Loginmodel> loginmodelFromJson(String str) => List<Loginmodel>.from(json.decode(str).map((x) => Loginmodel.fromJson(x)));

String loginmodelToJson(List<Loginmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Loginmodel {
    
    String username;
    String password;
    

    Loginmodel({
       
        required this.username,
        required this.password,
       
    });

    factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
       
        username: json["username"],
        password: json["email"],
        
    );

    Map<String, dynamic> toJson() => {
        
        "username": username,
        "email": password,
       
    };
}
