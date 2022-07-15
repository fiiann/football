import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:football/controller/teams_c.dart';
import 'package:football/pages/component/team_list.dart';
import 'package:football/pages/widget/custom_indicator.dart';


class MusicPage extends StatelessWidget {
  MusicPage({Key? key}) : super(key: key);
  final musicC = Get.find<TeamsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context),
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
                          if(musicC.isLoading.value){
                            return const CustomLoadingIndicator();
                          }
                          else{
                            return TeamList();
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
