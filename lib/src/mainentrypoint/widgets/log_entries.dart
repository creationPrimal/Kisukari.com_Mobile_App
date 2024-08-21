


import 'package:flutter/material.dart';

class LogEntries extends StatelessWidget {
  
  final VoidCallback hideOverlay;

  const LogEntries({super.key, required this.hideOverlay});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color.fromARGB(127, 0, 0, 0),
      ),
      child: Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: hideOverlay,
            child: const Text('Close Overlay'),
          ),
        ),
      ),
    );
  }
}