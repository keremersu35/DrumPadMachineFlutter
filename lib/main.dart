import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Drumpad());
}

class Drumpad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Pads(),
        ),
       );
      }
     }

class Pads extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Expanded(child: Row(
              children: <Widget> [
                Expanded(child: buildPad('bip.wav', Colors.blue)),
                Expanded(child: buildPad('bongo.wav', Colors.red))
               ],
             )),
            Expanded(child: Row(
              children: <Widget> [
                Expanded(child: buildPad('clap1.wav', Colors.deepOrange)),
                Expanded(child: buildPad('clap2.wav', Colors.teal))
               ],
             )),
            Expanded(child: Row(
              children: <Widget> [
                Expanded(child: buildPad('clap3.wav', Colors.deepPurple)),
                Expanded(child: buildPad('crash.wav', Colors.limeAccent))
               ],
             )),
            Expanded(child: Row(
              children: <Widget> [
                Expanded(child: buildPad('how.wav', Colors.pink)),
                Expanded(child: buildPad('oobah.wav', Colors.greenAccent))
               ],
             )),
            Expanded(child: Row(
              children: <Widget> [
                Expanded(child: buildPad('ridebel.wav', Colors.brown)),
                Expanded(child: buildPad('woo.wav', Colors.orangeAccent))
              ],
            ))
           ],
          ),
         );
        }
}

TextButton buildPad(String sound, Color color){
    final player = AudioCache();

    return TextButton(
        onPressed: (){
          player.play('$sound');
        },
        child: Container(
          color: color,
        ),
      );
  }





