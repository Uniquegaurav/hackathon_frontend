import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/plan_Screen/widgets/plan_select_form.dart';
import 'package:hackathon_frontend/screens/progress_screen/progress_screen.dart';

class PlanFormWidget extends StatelessWidget {
  const PlanFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        // key: widget.formKey,
        child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 20),
            child: Column(
              children: [
                Material(
                  elevation: 8,
                  child: Center(
                    child: Container(
                      padding:
                          const EdgeInsetsDirectional.only(top: 5, bottom: 5),
                      width: 360,
                      height: 60,
                      child: Center(
                        child: Text(
                          "Make Your Plan",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(children: [
                  Material(
                    elevation: 6,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                      ),
                      padding: const EdgeInsetsDirectional.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 1,
                                    child: Icon(Icons.flag_circle, size: 34)),
                                Expanded(
                                  flex: 7,
                                  child: Material(
                                    elevation: 4,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Apna time aayega",
                                          contentPadding:
                                              EdgeInsets.fromLTRB(15, 8, 8, 0),
                                          labelText: "Plan Name"),
                                      // validator: (value) {
                                      //   return ""
                                      // },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 1, child: Icon(Icons.mood, size: 34)),
                                Expanded(
                                  flex: 7,
                                  child: Material(
                                    elevation: 4,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "No one can stop me",
                                          contentPadding:
                                              EdgeInsets.fromLTRB(15, 8, 8, 0),
                                          labelText: "Plan Moto"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Material(
                                    elevation: 4,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "30",
                                          contentPadding:
                                              EdgeInsets.fromLTRB(15, 8, 8, 0),
                                          labelText: "Days"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Material(
                                    elevation: 4,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "5",
                                          contentPadding:
                                              EdgeInsets.fromLTRB(15, 8, 8, 0),
                                          labelText: "Penalty"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Expanded(flex: 6, child: PlanSelectForm()),
                      Expanded(
                          flex: 2,
                          child:
                              Material(elevation: 3, child: Center(child: TextFormField()))),
                      const SizedBox(
                        width: 70,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Expanded(flex: 6, child: PlanSelectForm()),
                      Expanded(
                          flex: 2,
                          child:
                              Material(elevation: 3, child: Center(child: TextFormField()))),
                      const SizedBox(
                        width: 70,
                      ),
                    ],
                  )
                ]),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // background
                      onPrimary: Colors.yellow, // foreground
                    ),
                    onPressed: () {
                      Get.to(const ProgressScreen());
                    },
                    child: const Text('Submit Plan',
                    style : TextStyle(
                      color: Colors.white,fontSize: 20,
                    )
                    ),
                  )
                )
              ],
            )),
      ),
    );
  }
}
