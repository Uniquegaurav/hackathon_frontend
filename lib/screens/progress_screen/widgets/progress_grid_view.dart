import 'package:flutter/material.dart';
class ProgressGridViewWidget extends StatelessWidget {
  const ProgressGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
        }
    );
  }
}
