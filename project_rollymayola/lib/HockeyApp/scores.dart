import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  final String home;
  final String away;
  final String elapsed;

  // ignore: use_key_in_widget_constructors
  const Scores({
    required this.home,
    required this.away,
    required this.elapsed
  });

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$elapsed'",
            style: const TextStyle(
              fontSize: 30.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "$home - $away",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 36.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}