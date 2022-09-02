import 'package:flutter/material.dart';
import 'package:hackathon_frontend/models/app_theme_data.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border(
                  bottom: BorderSide(
                      color: AppThemeData.instance.cautionColorLight),
                )),
            child: const Center(
                child: Text("Log In",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 20))),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.2))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    color: Colors.grey.withOpacity(0.2)))),
                        child: Center(
                            child: Icon(Icons.person,
                                size: 35, color: Colors.grey.withOpacity(0.4))),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Name",
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.black26,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration:  BoxDecoration(
                    color: AppThemeData.instance.strokeDark2),
                child: const Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                )),
              ),
              onPressed: () {
                // if (_formKey.currentState.validate()) {
                //   _formKey.currentState.save();
                // }
              },
            ),
          )
        ],
      ),
    );
  }
}
