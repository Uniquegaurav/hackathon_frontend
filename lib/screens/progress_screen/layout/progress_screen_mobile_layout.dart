import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/progress_screen/widgets/progress_grid_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressScreenMobileLayout extends StatelessWidget {
  const ProgressScreenMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Progress'),
        backgroundColor: const Color.fromARGB(255, 231, 62, 98),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 10),
              child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/back3.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 400,
                      padding: const EdgeInsetsDirectional.all(10),
                      child: const ProgressGridViewWidget())
                  .asGlass(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularStepProgressIndicator(
                    totalSteps: 12,
                    currentStep: 6,
                    selectedColor: Colors.redAccent,
                    unselectedColor: Colors.grey[200],
                    selectedStepSize: 10.0,
                    width: 100,
                    gradientColor: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.cyan, Colors.orangeAccent],
                    ),
                    child: const Center(
                      child: Text(
                        "28",
                        style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    " /30days",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  )
                ],

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 330,
              child: StepProgressIndicator(
                totalSteps: 30,
                currentStep: 5,
                size: 8,
                padding: 0,
                selectedColor: Colors.yellow,
                unselectedColor: Colors.cyan,
                roundedEdges: Radius.circular(10),
                selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.yellowAccent, Colors.deepOrange],
                ),
                unselectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black, Colors.blue],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Penalty",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("2"),
                      leading: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.sentiment_dissatisfied,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("12"),
                    leading: Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Icon(
                        size: 40,
                        Icons.sentiment_neutral,
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
