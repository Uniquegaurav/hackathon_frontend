import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/plan_Screen/plan_screen.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);
  final goalList = ["Fitness", "Sleep" ,"Diet" ,"Yoga"];
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
            child: Card(

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  DecorationImage(
                      image: AssetImage("assets/images/gym${i+1}.jpeg"),
                      fit:BoxFit.cover
                  ),
                ),
                height: 250,
                padding: const EdgeInsetsDirectional.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          goalList[i],
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.tealAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
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
