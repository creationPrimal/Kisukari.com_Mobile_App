

// Initial loader to initialize intro calculations

import 'package:flutter/material.dart';

class Calculatingloader extends StatefulWidget {
  const Calculatingloader({super.key});

  @override
  State<Calculatingloader> createState() => _CalculatingloaderState();
}

class _CalculatingloaderState extends State<Calculatingloader> {


  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator()
      );
  }
}