import 'package:flutter/material.dart';
import 'package:football/const/custom_style.dart';

import '../model/team_model.dart';
class DetailPage extends StatelessWidget {
  final Team team;
  DetailPage(this.team);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(team.strTeam??''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(team.strTeamBadge??''),
              const SizedBox(height: 20,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: CustomStyle.mainColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(team.intFormedYear!.toUpperCase(),style: const TextStyle(color: Colors.white),),
                    ),
                  ),
                  Card(
                    color: CustomStyle.mainColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(team.strCountry!.toUpperCase(),style: const TextStyle(color: Colors.white),),
                    ),
                  ),
                  Card(
                    color: CustomStyle.mainColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(team.strStadium!.toUpperCase(),style: const TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Text(team.strDescriptionEn!, textAlign: TextAlign.justify,)
            ],
          ),
        ),
      ),
    );
  }
}
