import 'package:flutter/material.dart';
import 'package:i_am_rich/HockeyApp/api_code.dart';
import 'package:i_am_rich/HockeyApp/appbody.dart';

import 'api_code.dart';
import 'model.dart';


class HockeyApp extends StatefulWidget {
  const HockeyApp({Key? key}) : super(key: key);
  @override
  _HockeyAppState createState() => _HockeyAppState();
}

class _HockeyAppState extends State<HockeyApp> {
  late List<HockeyMatch> _hockeyMatches;
  bool _isLoading = true;

  Future<void> getMatches() async {
    _hockeyMatches= await HockeyApi.getMatches();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: const Color(0xFF5A0100),
          elevation: 0.0,

          title: const Text(
            "HOCKEY TOURNAMENT",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),

        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _hockeyMatches.length,
          itemBuilder: (BuildContext context, int index) {
            return PageBody(
                league: _hockeyMatches[index].league,
                home: _hockeyMatches[index].home,
                away: _hockeyMatches[index].away,
                scores: _hockeyMatches[index].scores,
               id: _hockeyMatches[index].id,
               name: _hockeyMatches[index].name,
                logoUrl: _hockeyMatches[index].logoUrl,
                elapsed: _hockeyMatches[index].elapsed
                );
          },
        ));
  }
}