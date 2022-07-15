import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/const/custom_style.dart';
import 'package:football/controller/teams_c.dart';
import 'package:football/pages/component/team_card.dart';
import 'package:football/pages/widget/no_data.dart';

class TeamList extends StatelessWidget {
  var scrollController;


  TeamList(this.scrollController);

  final teamsC = Get.find<TeamsController>();

  @override
  Widget build(BuildContext context) {
    return Obx((){
      if(teamsC.modelTeams.value.teams == null){
        return const NoData(teks: 'Team not found');
      }else{
        return Expanded(
          child: ListView.separated(
            controller: scrollController,
            separatorBuilder: (context, index){
              return const Divider(thickness: 0, color: Colors.transparent,);
            },
            itemCount: teamsC.listTeams.value.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index){
              return TeamCard(teamsC.listTeams.value[index]);
            },
          ),
        );
      }
    });
  }
}
