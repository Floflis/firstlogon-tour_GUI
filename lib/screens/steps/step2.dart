import 'package:flutter/material.dart';
import '../../app.dart';
import 'steps.dart';

import 'dart:io';

Step step2(BuildContext context) {
  return Step(
    title: Text('Step 2'),
    content: Column(
      children: <Widget>[
        Text('This is the placeholder for Step 2'),
        ElevatedButton(
          child: Text('Next'),
          onPressed: () {
            // Navigation logic goes here
          },
        ),
        // Add more widgets here
//ListTile(
//  title: const Text('Option 1'),
//  leading: Radio(
//    value: 1,
//    groupValue: _radioValue,
//    onChanged: (int? value) {
//      setState(() {
//        _radioValue = value;
//      });
//    },
//  ),
//)
      ],
    ),
  );
}
