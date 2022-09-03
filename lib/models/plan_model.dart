import 'dart:convert';

List<PlanModel> planModelFromJson(String str) =>
    List<PlanModel>.from(json.decode(str).map((x) => PlanModel.fromJson(x)));

String planModelToJson(List<PlanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlanModel {
  PlanModel({
    required this.name,
    required this.description
  });

  String name;
  String description;
  factory PlanModel.fromJson(Map<String, dynamic> json) => PlanModel(
    name: json["name"],
    description :  json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": description,
  };
}
