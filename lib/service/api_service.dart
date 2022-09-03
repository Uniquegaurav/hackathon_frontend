import 'dart:developer';

import 'package:hackathon_frontend/constants/constants.dart';
import 'package:hackathon_frontend/models/goal_model.dart';
import 'package:hackathon_frontend/models/plan_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiService {

  Future<List<GoalModel>?> getGoals() async {
    List<GoalModel> model = [];
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.goalEndpoint);
      var response = await http.get(url);
      Logger().d("response data : $response");
      if (response.statusCode == 200) {
         model = goalModelFromJson(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
    return model;
  }
}
