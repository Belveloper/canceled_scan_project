import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'ScanScreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SlideActionState> key = GlobalKey();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Lottie.asset("assets/animation.zip"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bienvenue",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
                Container(
                  width: 55,
                  height: 2,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const Text("veuillez suivre les etapes pour confirmer votre identite",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SlideAction(
              elevation: 0,
              text: "Glisser pour proceder",
              alignment: Alignment.center,
              textStyle: const TextStyle(fontSize: 20, color: Colors.white),
              outerColor: Colors.black87,
              key: key,
              onSubmit: () {
                Future.delayed(
                  const Duration(seconds: 1),
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScanScreen())),
                );
                alignment:
                Alignment.centerRight;
              },
            ),
          )
        ],
      ),
    );
  }
}
