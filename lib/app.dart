import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/steps.dart';
import 'dart:io';
import 'dart:convert';

class UbuntuTourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/steps': (context) => StepScreen(),
      },
    );
  }
}

class Executable {
  static Future<String> run(String command) async {
    Process process = await Process.start(command, []);
    String output = await process.stdout.transform(utf8.decoder).join();
    return output;
  }
}
