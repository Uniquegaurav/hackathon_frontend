import 'package:get/get.dart';
import 'package:hackathon_frontend/models/goal_model.dart';
import 'package:hackathon_frontend/service/api_service.dart';
import 'package:logger/logger.dart';

class HomeScreenViewModel{


  RxList nameList  = [].obs;
  RxList  descriptionList =  [].obs;

  void getGoalsData() async{
    List<GoalModel>  model = (await ApiService().getGoals())!;
    Logger().d("view model called");
    for(var goal in model){
      nameList.add(goal.name);
      descriptionList.add(goal.description);
    }
  }

}