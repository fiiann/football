import 'dart:convert';

TeamsRespon teamResponFromJson(String str) => TeamsRespon.fromJson(json.decode(str));

String teamRespnoToJson(TeamsRespon data) => json.encode(data.toJson());

class TeamsRespon {
  TeamsRespon({
    this.teams,
  });

  List<Teams>? teams;

  factory TeamsRespon.fromJson(Map<String, dynamic> json) => TeamsRespon(
    teams: List<Teams>.from(json["teams"]!.map((x) => Teams.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "teams": List<dynamic>.from(teams!.map((x) => x.toJson())),
  };
}

class Teams {
  Teams({
    required this.idTeam,
    required this.idSoccerXML,
    required this.idAPIfootball,
    required this.intLoved,
    required this.strTeam,
    required this.strTeamShort,
    required this.strAlternate,
    required this.intFormedYear,
    required this.strSport,
    required this.strLeague,
    required this.idLeague,
    required this.strLeague2,
    required this.idLeague2,
    required this.strLeague3,
    required this.idLeague3,
    required this.strLeague4,
    this.idLeague4,
    required this.strLeague5,
    this.idLeague5,
    required this.strLeague6,
    this.idLeague6,
    required this.strLeague7,
    this.idLeague7,
    this.strDivision,
    required this.strManager,
    required this.strStadium,
    required this.strKeywords,
    required this.strRSS,
    required this.strStadiumThumb,
    required this.strStadiumDescription,
    required this.strStadiumLocation,
    required this.intStadiumCapacity,
    required this.strWebsite,
    required this.strFacebook,
    required this.strTwitter,
    required this.strInstagram,
    required this.strDescriptionEN,
    required this.strDescriptionDE,
    required this.strDescriptionFR,
    this.strDescriptionCN,
    required this.strDescriptionIT,
    required this.strDescriptionJP,
    required this.strDescriptionRU,
    required this.strDescriptionES,
    required this.strDescriptionPT,
    this.strDescriptionSE,
    this.strDescriptionNL,
    this.strDescriptionHU,
    required this.strDescriptionNO,
    this.strDescriptionIL,
    this.strDescriptionPL,
    required this.strKitColour1,
    required this.strKitColour2,
    this.strKitColour3,
    required this.strGender,
    required this.strCountry,
    required this.strTeamBadge,
    required this.strTeamJersey,
    required this.strTeamLogo,
    required this.strTeamFanart1,
    required this.strTeamFanart2,
    required this.strTeamFanart3,
    required this.strTeamFanart4,
    required this.strTeamBanner,
    required this.strYoutube,
    required this.strLocked,
  });
  late final String idTeam;
  late final String idSoccerXML;
  late final String idAPIfootball;
  late final String intLoved;
  late final String strTeam;
  late final String strTeamShort;
  late final String strAlternate;
  late final String intFormedYear;
  late final String strSport;
  late final String strLeague;
  late final String idLeague;
  late final String strLeague2;
  late final String idLeague2;
  late final String strLeague3;
  late final String idLeague3;
  late final String strLeague4;
  late final Null idLeague4;
  late final String strLeague5;
  late final Null idLeague5;
  late final String strLeague6;
  late final Null idLeague6;
  late final String strLeague7;
  late final Null idLeague7;
  late final Null strDivision;
  late final String strManager;
  late final String strStadium;
  late final String strKeywords;
  late final String strRSS;
  late final String strStadiumThumb;
  late final String strStadiumDescription;
  late final String strStadiumLocation;
  late final String intStadiumCapacity;
  late final String strWebsite;
  late final String strFacebook;
  late final String strTwitter;
  late final String strInstagram;
  late final String strDescriptionEN;
  late final String strDescriptionDE;
  late final String strDescriptionFR;
  late final Null strDescriptionCN;
  late final String strDescriptionIT;
  late final String strDescriptionJP;
  late final String strDescriptionRU;
  late final String strDescriptionES;
  late final String strDescriptionPT;
  late final Null strDescriptionSE;
  late final Null strDescriptionNL;
  late final Null strDescriptionHU;
  late final String strDescriptionNO;
  late final Null strDescriptionIL;
  late final Null strDescriptionPL;
  late final String strKitColour1;
  late final String strKitColour2;
  late final Null strKitColour3;
  late final String strGender;
  late final String strCountry;
  late final String strTeamBadge;
  late final String strTeamJersey;
  late final String strTeamLogo;
  late final String strTeamFanart1;
  late final String strTeamFanart2;
  late final String strTeamFanart3;
  late final String strTeamFanart4;
  late final String strTeamBanner;
  late final String strYoutube;
  late final String strLocked;

  Teams.fromJson(Map<String, dynamic> json){
    idTeam = json['idTeam'];
    idSoccerXML = json['idSoccerXML'];
    idAPIfootball = json['idAPIfootball'];
    intLoved = json['intLoved'];
    strTeam = json['strTeam'];
    strTeamShort = json['strTeamShort'];
    strAlternate = json['strAlternate'];
    intFormedYear = json['intFormedYear'];
    strSport = json['strSport'];
    strLeague = json['strLeague'];
    idLeague = json['idLeague'];
    strLeague2 = json['strLeague2'];
    idLeague2 = json['idLeague2'];
    strLeague3 = json['strLeague3'];
    idLeague3 = json['idLeague3'];
    strLeague4 = json['strLeague4'];
    idLeague4 = null;
    strLeague5 = json['strLeague5'];
    idLeague5 = null;
    strLeague6 = json['strLeague6'];
    idLeague6 = null;
    strLeague7 = json['strLeague7'];
    idLeague7 = null;
    strDivision = null;
    strManager = json['strManager'];
    strStadium = json['strStadium'];
    strKeywords = json['strKeywords'];
    strRSS = json['strRSS'];
    strStadiumThumb = json['strStadiumThumb'];
    strStadiumDescription = json['strStadiumDescription'];
    strStadiumLocation = json['strStadiumLocation'];
    intStadiumCapacity = json['intStadiumCapacity'];
    strWebsite = json['strWebsite'];
    strFacebook = json['strFacebook'];
    strTwitter = json['strTwitter'];
    strInstagram = json['strInstagram'];
    strDescriptionEN = json['strDescriptionEN'];
    strDescriptionDE = json['strDescriptionDE'];
    strDescriptionFR = json['strDescriptionFR'];
    strDescriptionCN = null;
    strDescriptionIT = json['strDescriptionIT'];
    strDescriptionJP = json['strDescriptionJP'];
    strDescriptionRU = json['strDescriptionRU'];
    strDescriptionES = json['strDescriptionES'];
    strDescriptionPT = json['strDescriptionPT'];
    strDescriptionSE = null;
    strDescriptionNL = null;
    strDescriptionHU = null;
    strDescriptionNO = json['strDescriptionNO'];
    strDescriptionIL = null;
    strDescriptionPL = null;
    strKitColour1 = json['strKitColour1'];
    strKitColour2 = json['strKitColour2'];
    strKitColour3 = null;
    strGender = json['strGender'];
    strCountry = json['strCountry'];
    strTeamBadge = json['strTeamBadge'];
    strTeamJersey = json['strTeamJersey'];
    strTeamLogo = json['strTeamLogo'];
    strTeamFanart1 = json['strTeamFanart1'];
    strTeamFanart2 = json['strTeamFanart2'];
    strTeamFanart3 = json['strTeamFanart3'];
    strTeamFanart4 = json['strTeamFanart4'];
    strTeamBanner = json['strTeamBanner'];
    strYoutube = json['strYoutube'];
    strLocked = json['strLocked'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idTeam'] = idTeam;
    _data['idSoccerXML'] = idSoccerXML;
    _data['idAPIfootball'] = idAPIfootball;
    _data['intLoved'] = intLoved;
    _data['strTeam'] = strTeam;
    _data['strTeamShort'] = strTeamShort;
    _data['strAlternate'] = strAlternate;
    _data['intFormedYear'] = intFormedYear;
    _data['strSport'] = strSport;
    _data['strLeague'] = strLeague;
    _data['idLeague'] = idLeague;
    _data['strLeague2'] = strLeague2;
    _data['idLeague2'] = idLeague2;
    _data['strLeague3'] = strLeague3;
    _data['idLeague3'] = idLeague3;
    _data['strLeague4'] = strLeague4;
    _data['idLeague4'] = idLeague4;
    _data['strLeague5'] = strLeague5;
    _data['idLeague5'] = idLeague5;
    _data['strLeague6'] = strLeague6;
    _data['idLeague6'] = idLeague6;
    _data['strLeague7'] = strLeague7;
    _data['idLeague7'] = idLeague7;
    _data['strDivision'] = strDivision;
    _data['strManager'] = strManager;
    _data['strStadium'] = strStadium;
    _data['strKeywords'] = strKeywords;
    _data['strRSS'] = strRSS;
    _data['strStadiumThumb'] = strStadiumThumb;
    _data['strStadiumDescription'] = strStadiumDescription;
    _data['strStadiumLocation'] = strStadiumLocation;
    _data['intStadiumCapacity'] = intStadiumCapacity;
    _data['strWebsite'] = strWebsite;
    _data['strFacebook'] = strFacebook;
    _data['strTwitter'] = strTwitter;
    _data['strInstagram'] = strInstagram;
    _data['strDescriptionEN'] = strDescriptionEN;
    _data['strDescriptionDE'] = strDescriptionDE;
    _data['strDescriptionFR'] = strDescriptionFR;
    _data['strDescriptionCN'] = strDescriptionCN;
    _data['strDescriptionIT'] = strDescriptionIT;
    _data['strDescriptionJP'] = strDescriptionJP;
    _data['strDescriptionRU'] = strDescriptionRU;
    _data['strDescriptionES'] = strDescriptionES;
    _data['strDescriptionPT'] = strDescriptionPT;
    _data['strDescriptionSE'] = strDescriptionSE;
    _data['strDescriptionNL'] = strDescriptionNL;
    _data['strDescriptionHU'] = strDescriptionHU;
    _data['strDescriptionNO'] = strDescriptionNO;
    _data['strDescriptionIL'] = strDescriptionIL;
    _data['strDescriptionPL'] = strDescriptionPL;
    _data['strKitColour1'] = strKitColour1;
    _data['strKitColour2'] = strKitColour2;
    _data['strKitColour3'] = strKitColour3;
    _data['strGender'] = strGender;
    _data['strCountry'] = strCountry;
    _data['strTeamBadge'] = strTeamBadge;
    _data['strTeamJersey'] = strTeamJersey;
    _data['strTeamLogo'] = strTeamLogo;
    _data['strTeamFanart1'] = strTeamFanart1;
    _data['strTeamFanart2'] = strTeamFanart2;
    _data['strTeamFanart3'] = strTeamFanart3;
    _data['strTeamFanart4'] = strTeamFanart4;
    _data['strTeamBanner'] = strTeamBanner;
    _data['strYoutube'] = strYoutube;
    _data['strLocked'] = strLocked;
    return _data;
  }
}