import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/controller/teams_c.dart';
import 'package:football/pages/component/team_list.dart';
import 'package:football/pages/widget/custom_indicator.dart';


class FootballPage extends StatelessWidget {

  FootballPage({Key? key}) : super(key: key);
  final teamC = Get.find<TeamsController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Premiere League"),
        ),
        body: content(context),
      ),
    );
  }

  Widget content(BuildContext context){
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx((){
                          if(teamC.isLoading.value){
                            return const CustomLoadingIndicator();
                          }
                          else{
                            return TeamList(teamC.scrollController.value);
                          }
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
