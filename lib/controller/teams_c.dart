import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';
import 'package:football/service/thesportdb_api.dart';

class TeamsController extends GetxController with WidgetsBindingObserver{
  var isLoading = false.obs;
  var modelTeams = TeamsRespon(teams: []).obs;
  var listTeams = [].obs;
  var scrollController = ScrollController().obs;
  var listLength = 6.obs;
  var isLoadingLoadmore = false.obs;
  @override
  void onInit() {
    print("init");
    initData('');
    addItems();
  }

  void initData(String keyword) async{
    isLoading.value = true;
    modelTeams.value = await getTeams(keyword);
    for(int i = 0;i < listLength.value; i++){
      listTeams.value.add(modelTeams.value.teams![i]);
    }
    isLoading.value = false;
  }

 void addItems() async {
    scrollController.value.addListener(() {
      if (scrollController.value.position.maxScrollExtent == scrollController.value.position.pixels) {
        print("scorll");
        isLoadingLoadmore.value = true;
        for (int i = listLength.value; i < listLength.value+5; i++) {
          print("index : $i");
          print(listTeams.value.length);
          listTeams.value.add(modelTeams.value.teams![i]);
        }
        isLoadingLoadmore.value = false;
      }
    });
  }
/*
  generateList() {
    list = List.generate(
        listLength, (index) => Model(name: (index + 1).toString()));
  }*/

  Future<TeamsRespon> getTeams(String keyword) async {
    TeamsRespon teamsRespon = await TheSportDBApi().getTeams();
    return teamsRespon;
  }
}