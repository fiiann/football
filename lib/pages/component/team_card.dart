import 'package:flutter/material.dart';
import 'package:football/pages/detail_page.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';

import '../../const/custom_style.dart';

class TeamCard extends StatelessWidget {
  final Team team;
  TeamCard(this.team, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      tileColor: Colors.black12,
      onTap: () {
        Get.to(DetailPage(team));
      },
      leading: Container(
        height : MediaQuery.of(context).size.width/8,
        width : MediaQuery.of(context).size.width/8,

        child: Image.network(team.strTeamBadge??''),
      ),
      title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Text(team.strTeam??'', style: const TextStyle(color: Colors.black)),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Text(team.strLeague??'', maxLines: 1,),
          const SizedBox(height: 5,),
          Text(team.strCountry??'',maxLines: 1,),
          const Divider(thickness: 2,),
          Text(team.strWebsite??'',maxLines: 1,),
          const SizedBox(height: 20,),
        ],
      ),
      isThreeLine: true,
      trailing: const SizedBox(),
    );
  }
}
