import 'package:flutter/material.dart';

class WalletFormWidget extends StatelessWidget {
  const WalletFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 20),
          child: Column(children: [

            Container(
              height: 120,
              width: 120,
              child: Image.asset("assets/images/wallet2.png"),
            ),
            Container(
              child: const Text(
                "Your Balance",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 231, 62, 98)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              elevation: 10,
              child: Center(
                child: Container(
                  padding: const EdgeInsetsDirectional.only(top: 5, bottom: 5),
                  width: 360,
                  height: 60,
                  child: const Center(
                    child: Text(
                      "Rs. 500",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff54BAB9),
                        fontWeight: FontWeight.w500,
                      ),
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
                Row(
                  children: const [
                    Text(
                      "Enter amount to transfer to your wallet",
                      style: TextStyle(
                          color: Color(0xff748DA6),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 231, 62, 98))),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "Amount",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 231, 62, 98),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff54BAB9),

                        ),
                        child: const Text(
                          'Add',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ]),
              ],
            )
          ])),
    ));
  }
}
