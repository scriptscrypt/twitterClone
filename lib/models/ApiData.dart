// To parse this JSON data, do
//
//     final apidata = apidataFromJson(jsonString);

import 'dart:convert';

List<Apidata> apidataFromJson(String str) =>
    List<Apidata>.from(json.decode(str).map((x) => Apidata.fromJson(x)));

String apidataToJson(List<Apidata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Apidata {
  Apidata({
    required this.userId,
    required this.id,
    required this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String? body;

  factory Apidata.fromJson(Map<String, dynamic> json) => Apidata(
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
