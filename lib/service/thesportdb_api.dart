import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';
import 'package:football/service/api.dart';

class TheSportDBApi extends GetConnect{
  TheSportDBApi(){
    httpClient.timeout = const Duration(seconds: 20);
  }

  Future<TeamsRespon> getTeams() async{
    final response = await get('${Api.apiHost}v1/json/2/search_all_teams.php?l=English%20Premier%20League');
    if (kDebugMode) {
      print("RESPONSE ${response.body}");
    }
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return teamResponFromJson(response.body);
    }
  }
}