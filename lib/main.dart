import 'package:calling/screens/dialScreen/dial_screen.dart';
import 'package:calling/screens/groupCall/group_call_screen.dart';
import 'package:flutter/material.dart';

import 'screens/audioCallWithImage/audio_call_with_image_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ManageScreen(),
    );
  }
}

class ManageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo app with dial'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => AudioCallWithImage(),
                      ),
                    );
                  },
                  child: Text('AudioCallWithImage'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => GroupCallScreen(),
                      ),
                    );
                  },
                  child: Text('GroupCallScreen'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DialScreen(),
                      ),
                    );
                  },
                  child: Text('DialScreen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
