import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/login_screen/widgets/form_widget.dart';
class LoginAlertDialogWidget extends StatelessWidget {
  const LoginAlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Stack(
        clipBehavior: Clip.none, children: <Widget>[
          Positioned(
            right: -20.0,
            top: -20.0,
            child: InkResponse(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const CircleAvatar(
                radius: 12,
                backgroundColor: Colors.red,
                child: Icon(Icons.close, size: 20,),
              ),
            ),
          ),
         const FormWidget(),
        ],
      ),
    );
  }
}
