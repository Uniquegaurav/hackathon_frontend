import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/plan_Screen/widgets/plan_select_form.dart';
class PlanFormWidget extends StatelessWidget {
  const PlanFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        // key: widget.formKey,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 20),
          child : Column(
            children: [
              Material(
                elevation: 10,
                child: Center(
                  child: Container(
                    padding: const EdgeInsetsDirectional.only(top: 5,bottom: 5),
                    width: 360,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Make Your Plan",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
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
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                      ),
                    padding: const EdgeInsetsDirectional.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20,),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 1, child: Icon(Icons.flag_circle, size: 34)),
                              Expanded(
                                flex: 7,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Apna time aayega",
                                      contentPadding:
                                      const EdgeInsets.fromLTRB(15, 8, 8, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0)),
                                      labelText: "Plan Name"),
                                  // validator: (value) {
                                  //   return ""
                                  // },
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
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "No one can stop me",
                                      contentPadding:
                                      const EdgeInsets.fromLTRB(15, 8, 8, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15.0)),
                                      labelText: "Plan Moto"),
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
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "30",
                                      contentPadding:
                                      const EdgeInsets.fromLTRB(15, 8, 8, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      labelText: "Days"),
                                ),),
                              const SizedBox(width: 20,),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "5",
                                      contentPadding:
                                      const EdgeInsets.fromLTRB(15, 8, 8, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      labelText: "Penalty"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex :6,
                          child: PlanSelectForm()),
                      Expanded(
                          flex: 3,
                          child: Material(elevation : 3,child: TextFormField())
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      const Expanded(flex: 6,child: PlanSelectForm()),
                      Expanded(
                          flex: 3,
                          child: Material(elevation : 3,child: TextFormField())
                      ),
                    ],
                  )
                ]
              ),
            ],
          )
        ),
      ),
    );
  }
}

