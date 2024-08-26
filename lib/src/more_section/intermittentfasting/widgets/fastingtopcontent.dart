


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class FastingTopContent extends StatefulWidget {
  const FastingTopContent({super.key});

  @override
  State<FastingTopContent> createState() => _FastingTopContentState();
}

class _FastingTopContentState extends State<FastingTopContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Kcolors.lightGrey,
      )
    );
  }
}