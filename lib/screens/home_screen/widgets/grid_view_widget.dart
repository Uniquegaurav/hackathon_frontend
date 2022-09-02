import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/plan_Screen/plan_screen.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

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
                height: 250,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsetsDirectional.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Expanded(
                        //   child: Image.network(
                        //     'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
                        //     fit: BoxFit.fill,
                        //   ),
                        // ),
                        const Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Subtitle',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
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
