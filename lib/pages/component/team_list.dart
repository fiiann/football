import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/const/custom_style.dart';
import 'package:football/controller/teams_c.dart';
import 'package:football/pages/component/team_card.dart';
import 'package:football/pages/widget/no_data.dart';

class TeamList extends StatelessWidget {
  TeamList({Key? key}) : super(key: key);
  final teamsC = Get.find<TeamsController>();

  @override
  Widget build(BuildContext context) {
    if(teamsC.modelTeams.value.teams == null){
      return const NoData(teks: 'Team not found');
    }else{
      return Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index){
            return const Divider(thickness: 0, color: CustomStyle.mainColor,);
          },
          itemCount: teamsC.modelTeams.value.teams!.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index){
            return TeamCard(teamsC.modelTeams.value.teams![index]);
          },
        ),
      );
    }
  }
}
