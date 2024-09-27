

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/learning/learning/widgets/firstslider.dart';
import 'package:kisukari_mobile_app/src/learning/learning/widgets/secondslider.dart';
import 'package:kisukari_mobile_app/src/learning/learning/widgets/thirdslider.dart';
import 'package:kisukari_mobile_app/src/learning/learning/widgets/topslider.dart';
class LearningScreen extends StatefulWidget {
  const LearningScreen({super.key});

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 15, left: 15),
      child:
        const Column(
          children: [
            // top scroll 
            LearnTopSlider(),
            // first slider
            LearnFirstSlider(),
            // second slider
            LearnSecondSlider(),
            // third slider
            LearnThirdSlider(),
          ]
        )
    );
  }
}
