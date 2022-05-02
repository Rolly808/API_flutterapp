import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  final String id;
  final String name;
  final String logoUrl;

  // ignore: use_key_in_widget_constructors
  const Team({
    required this.id,
    required this.name,
    required this.logoUrl
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            id,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Image.network(
              logoUrl,
              width: 54.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}