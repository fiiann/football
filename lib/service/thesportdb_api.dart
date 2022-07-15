import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';
import 'package:football/service/api.dart';

class TheSportDBApi extends GetConnect{
  TheSportDBApi(){
    httpClient.timeout = const Duration(seconds: 20);
  }

  Future<TeamsRespon> getTeams() async{
    final response = await get(
        '${Api.apiHost}v1/json/2/search_all_teams.php?l=English%20Premier%20League',
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, OPTIONS",
          "Access-Control-Allow-Headers": "Content-Type, Authorization, X-Requested-With"
        }
    );
    if (kDebugMode) {
      // print("RESPONSE ${response.body}");
    }
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return teamsResponFromJson(response.bodyString!);
    }
  }
}