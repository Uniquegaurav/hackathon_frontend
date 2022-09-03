import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:hackathon_frontend/screens/plan_Screen/plan_screen.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);
  final HomeScreenViewModel homeScreenViewModel  = Get.find();
  final goalList = ["Fitness", "Sleep" ,"Diet" ,"Yoga"];
  final goalListDesc = ["Show up, train up, never give up", "Sound sleep for a great day" ,"Healthy outside starts inside" ,"Yoga wellness of mind and body"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsetsDirectional.only(start: 8,top: 20,bottom: 20,end: 8),
        itemCount: 4,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: (){
              Get.to(const PlanScreen());
            },
            child: Material(
              elevation: 4,
              child: Card(

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // image:  DecorationImage(
                    //     image: AssetImage("assets/images/gym${i+1}.jpeg"),
                    //     fit:BoxFit.cover
                    // ),
                  ),
                  height: 250,
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 3, 15, 5),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            goalList[i],
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            goalListDesc[i],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.teal,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 110,
                            height: 130,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image:  DecorationImage(
                                  image: AssetImage("assets/images/gym${i+1}.jpeg"),
                                  fit:BoxFit.cover
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          mainAxisExtent: 220,

        ),
      ),
    );
  }
}
