import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/app_theme/app_theme_data.dart';
import 'package:hackathon_frontend/common_widgets/primary_button.dart';
import 'package:hackathon_frontend/common_widgets/secondary_button.dart';
import 'package:hackathon_frontend/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:hackathon_frontend/screens/plan_Screen/plan_screen.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);
  final HomeScreenViewModel homeScreenViewModel = Get.find();
  final goalList = ["Fitness", "Sleep", "Diet", "Yoga"];
  final goalListDesc = [
    "Train like never before",
    "Maintain sleep schedule",
    "Your diet our priority",
    "Calm your body and mind"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsetsDirectional.only(
            start: 3, top: 20, bottom: 20, end: 3),
        itemCount: 4,
        itemBuilder: (ctx, i) {
          return Material(
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
                padding: const EdgeInsetsDirectional.fromSTEB(6, 3, 6, 1),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          goalList[i],
                          style:  TextStyle(
                            fontSize: 22,
                            color: ThemeColor.titleColorBright,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          goalListDesc[i],
                          style:TextStyle(
                            fontSize: 11,
                            color: ThemeColor.subTextColor2,
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
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/gym${i + 1}.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SecondaryButton(title: "Details",
                              height: 40,
                              width: 60,
                            ),
                            PrimaryButton(title: 'See Plans',
                              height: 40,
                              width: 90,
                            ),
                          ],
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
          crossAxisSpacing: 12,
          mainAxisSpacing: 15,
          mainAxisExtent: 250,
        ),
      ),
    );
  }
}
