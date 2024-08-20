import 'dart:convert';

List<UserPostModel> userPostModelFromJson(String str) => List<UserPostModel>.from(json.decode(str).map((x) => UserPostModel.fromJson(x)));

String userPostModelToJson(List<UserPostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserPostModel {
  int userId;
  int id;
  String title;
  String body;

  UserPostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory UserPostModel.fromJson(Map<String, dynamic> json) => UserPostModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
