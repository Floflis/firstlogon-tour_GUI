import 'package:flutter/material.dart';
import '../app.dart';

import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: Executable.getOSName(),
      builder: (BuildContext context, AsyncSnapshot<String> osname) {
        if (osname.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Welcome to ${osname.data}'),
            ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to ${osname.data}!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'This is your first time logging in. Let\'s set up your system.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/steps');
              },
              child: Text('Start Setup'),
            ),

//OPERATION DISTRO-LOGO
//ElevatedButton(
//  onPressed: () async {
//    String output = await Executable.runScript('include/linux-icon-getter/linux-icon-getter');
//    print(output);
//  },
//  child: Text('Run Script'),
//),
FutureBuilder<String>(
  future: Executable.getImagePath('bash include/linux-icon-getter/linux-icon-getter distributor-logo'),
  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else {
      String imagePath = snapshot.data!;
      if (imagePath.endsWith('.svg')) {
        return SvgPicture.file(
          File(imagePath),
          width: 200,
          height: 200,
        );
      } else if (imagePath.endsWith('.png')) {
        return Image.file(
          File(imagePath),
          width: 200,
          height: 200,
        );
      } else {
        return Text('Unsupported image format');
      }
    }
  },
),
//OPERATION DISTRO-LOGO

          ],
        ),
      ),
          );
        }
      },
    );
  }
}
