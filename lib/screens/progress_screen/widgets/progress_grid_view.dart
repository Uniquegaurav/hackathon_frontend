import 'package:flutter/material.dart';
class ProgressGridViewWidget extends StatefulWidget {
  const ProgressGridViewWidget({Key? key}) : super(key: key);

  @override
  State<ProgressGridViewWidget> createState() => _ProgressGridViewWidgetState();
}

class _ProgressGridViewWidgetState extends State<ProgressGridViewWidget> {
  final progressList = [1,1,1,1,0,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemCount: progressList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: const Color(0xff54BAB9),
            child: Center(
              child: progressList[index] == 0 ? const Icon(Icons.close,color: Colors.yellow,) :
              (progressList[index] == 1 ?
                  const Icon(Icons.done,color: Colors.yellow,) :
                Text("${index+1}",style: const TextStyle(color: Colors.white),)),
            ),
          );
        }
    );
  }
}
