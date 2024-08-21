

//These are UI design samples ONLY. not reusables but only to copy and use elsewhere

// add darkblue button
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class AddDarkBlueBtn extends StatelessWidget {
  const AddDarkBlueBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      margin: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: Kcolors.darkBlue,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add,
          size: 16,
          color: Kcolors.mainWhite,
          ),
          padding: const EdgeInsets.all(0)
        
        ),
      ),
    );
  }
}