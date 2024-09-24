

// Initial loader to initialize app

import 'package:flutter/material.dart';

class InitialLoader extends StatelessWidget {
  const InitialLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator()
      )
    );
  }
}
