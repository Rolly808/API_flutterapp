import 'package:flutter/material.dart';


class MatchTile extends StatelessWidget {
  final String home;
  final String away;
  final String elapsed;
  final String name;
  final String logoUrl;


  // ignore: use_key_in_widget_constructors
  const MatchTile({
    required this.home,
    required this.away,
    required this.elapsed,
    required this.name,
    required this.logoUrl,

  });

  @override
  Widget build(BuildContext context) {
    var homeScore = home;
    var awayScore = away;


    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Image.network(
            logoUrl,
            width: 36.0,
          ),
          Expanded(
            child: Text(
              "$homeScore - $awayScore",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Image.network(
            logoUrl,
            width: 36.0,
          ),
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

