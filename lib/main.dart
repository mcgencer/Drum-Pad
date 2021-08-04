import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumApp());
}

class DrumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioCache();

  void sesiCal(String ses) {
    oynatici.play("$ses.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDramPad("bongo",Colors.blue),
                  ),
                  Expanded(
                    child: buildDramPad("bip",Colors.pink),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDramPad("clap1",Colors.brown),
                  ),
                  Expanded(
                    child: buildDramPad("crash",Colors.yellow),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDramPad("clap2",Colors.purpleAccent),
                  ),
                  Expanded(
                    child: buildDramPad("how",Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDramPad("clap3",Colors.cyanAccent),
                  ),
                  Expanded(
                    child: buildDramPad("oobah",Colors.deepOrangeAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDramPad("ridebel",Colors.green),
                  ),
                  Expanded(
                    child: buildDramPad("woo",Colors.teal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDramPad(String ses, Color renk) {
    return FlatButton(
      padding: EdgeInsets.all(10.0),
      onPressed: () {
        sesiCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
