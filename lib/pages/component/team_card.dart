import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/model/team_model.dart';

import '../../const/custom_style.dart';

class TeamCard extends StatelessWidget {
  final Teams team;
  TeamCard(this.team, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Obx(
       () {
        return ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          tileColor: Colors.black12,
          onTap: () {
          },
          leading: Container(
            height : MediaQuery.of(context).size.width/8,
            width : MediaQuery.of(context).size.width/8,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomStyle.mainColor,
                width: 2
              )
            ),
            child: Image.network(team.strTeamLogo),
          ),
          title:Text(team.strTeam, style: const TextStyle(color: Colors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(team.strLeague, maxLines: 1,),
              Text(team.strCountry,maxLines: 1,),
            ],
          ),
          isThreeLine: true,
          trailing: const SizedBox(),
        );
      }
    );
  }
}
