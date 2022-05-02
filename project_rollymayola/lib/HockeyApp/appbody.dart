import 'package:flutter/material.dart';
import 'scores.dart';
import 'package:i_am_rich/HockeyApp/teamstat.dart';
import 'package:i_am_rich/HockeyApp/match.dart';

class PageBody extends StatelessWidget {

  final String league;
  final String home;
  final String away;
  final String scores;
  final String id;
  final String name;
  final String logoUrl;
  final String elapsed;
  // ignore: use_key_in_widget_constructors
  const PageBody({
    required this.league,
    required this.home,
    required this.away,
    required this.scores,
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.elapsed,
  });

  @override
  Widget  build(BuildContext context )  {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Team(id: id, name: name, logoUrl: logoUrl),
                  Scores(home: home, away: away, elapsed: elapsed),
                  Team(id: id, name: name, logoUrl: logoUrl)
                ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF4373D9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "MATCHES",
                      style: TextStyle(
                       color: Colors.white,
                         fontSize: 24.0,
                        ),
                      ),
                   Expanded(
                   child:
                   MatchTile(
                       home: home,
                       away: away,
                       elapsed: elapsed,
                       name: name,
                       logoUrl: logoUrl),
               )
               ],
            ),
          ),
        ),
       )
      ],
    );
  }
}

