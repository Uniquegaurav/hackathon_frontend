import 'dart:convert';

List<GoalModel> goalModelFromJson(String str) =>
    List<GoalModel>.from(json.decode(str).map((x) => GoalModel.fromJson(x)));

String goalModelToJson(List<GoalModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GoalModel {
  GoalModel({
    required this.name,
    required this.description
  });

  String name;
  String description;
  factory GoalModel.fromJson(Map<String, dynamic> json) => GoalModel(
    name: json["name"],
    description :  json["description"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": description,
  };
}
