import 'package:flutter/material.dart';
import 'app.dart';
import 'steps.dart';

//Step step1(BuildContext context) {
//  return Step(
//        title: Text('Step 1'),
//        content: Column(
//          children: <Widget>[
//            Text('This is the placeholder for Step 1'),
//            ElevatedButton(
//              child: Text('Run Executable'),
//              onPressed: () async {
//                String output = await Executable.run('your-command-here');
//                print(output);
//              },
//            ),
//            Checkbox(
//              value: _checkboxValue,
//              onChanged: (bool? value) {
//                setState(() {
//                  _checkboxValue = value ?? false;
//                });
//              },
//            ),
//          ],
//        ),
//      );
//}

Step step3(BuildContext context) {
  return Step(
    title: Text('Step 3'),
    content: Column(
      children: <Widget>[
        Text('This is the placeholder for Step 3'),
ElevatedButton(
  child: Text('Finalize'),
  onPressed: () {
    SystemNavigator.pop();
  },
)
        // Add more widgets here
      ],
    ),
  );
}