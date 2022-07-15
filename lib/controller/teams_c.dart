import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';
import 'package:football/service/thesportdb_api.dart';

class TeamsController extends GetxController with WidgetsBindingObserver{
  var isLoading = false.obs;
  var modelTeams = TeamsRespon(teams: []).obs;
  @override
  void onInit() {
    print("init");
    initData('');
  }

  void initData(String keyword) async{
    isLoading.value = true;
    modelTeams.value = await getTeams(keyword);
    isLoading.value = false;
  }

  Future<TeamsRespon> getTeams(String keyword) async {
    TeamsRespon teamsRespon = await TheSportDBApi().getTeams();
    return teamsRespon;
  }
}