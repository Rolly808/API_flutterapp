

class HockeyMatch {
  late String league;
  late String home;
  late String away;
  late String scores;
  late String id;
  late String name;
  late String logoUrl;
  late String elapsed;

  HockeyMatch({
   required this.league,
    required this.home,
    required this.away,
    required this.scores,
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.elapsed,
      });

  factory HockeyMatch.fromJson( dynamic json) {
    return HockeyMatch(
        league: json['league'] as String,
        home: json['home'] as String,
        away: json['away'] as String,
        scores: json['scores'] as String,
        id: json['id'] as String,
        name: json['name'] as String,
        logoUrl: json['logoUrl'] as String,
        elapsed: json['elapsed'] as String,
    );
  }

  static List<HockeyMatch> hockeyFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return HockeyMatch.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return'HockeyMatch {league: $league, home: $home, away: $away, scores: $scores}';
  }

}


/*
class League {
  int id;
  String name;
  String logoUrl;
  String season;
  String status;
  League(this.id, this.name, this.logoUrl, this.season, this.status);

  factory League.fromJson(Map<String, dynamic> json) {
    return League(json['id'], json['name'], json['logoUrl'], json['season'], json['status']);
  }
}


class Status {
  int elapsedTime;
  String short;
  String long;
  Status(this.elapsedTime, this.short, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['short'], json['long']);
  }
}

class Teams {
  int id;
  String name;
  String logoUrl;
  Teams(this.id, this.name, this.logoUrl);

  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(json['id'], json['name'], json['logo']);
  }
}

*/
