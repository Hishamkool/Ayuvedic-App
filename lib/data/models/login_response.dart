// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_response.g.dart';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

@JsonSerializable()
class Login {
    @JsonKey(name: "status")
    bool status;
    @JsonKey(name: "message")
    String message;
    @JsonKey(name: "token")
    String token;
    @JsonKey(name: "is_superuser")
    bool isSuperuser;
    @JsonKey(name: "user_details")
    UserDetails userDetails;

    Login({
        required this.status,
        required this.message,
        required this.token,
        required this.isSuperuser,
        required this.userDetails,
    });

    factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

    Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class UserDetails {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "last_login")
    dynamic lastLogin;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "phone")
    String phone;
    @JsonKey(name: "address")
    String address;
    @JsonKey(name: "mail")
    String mail;
    @JsonKey(name: "username")
    String username;
    @JsonKey(name: "password")
    String password;
    @JsonKey(name: "password_text")
    String passwordText;
    @JsonKey(name: "admin")
    int admin;
    @JsonKey(name: "is_admin")
    bool isAdmin;
    @JsonKey(name: "is_active")
    bool isActive;
    @JsonKey(name: "created_at")
    DateTime createdAt;
    @JsonKey(name: "updated_at")
    DateTime updatedAt;
    @JsonKey(name: "branch")
    dynamic branch;

    UserDetails({
        required this.id,
        required this.lastLogin,
        required this.name,
        required this.phone,
        required this.address,
        required this.mail,
        required this.username,
        required this.password,
        required this.passwordText,
        required this.admin,
        required this.isAdmin,
        required this.isActive,
        required this.createdAt,
        required this.updatedAt,
        required this.branch,
    });

    factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);

    Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
