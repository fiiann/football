import 'package:get/get.dart';
import 'package:football/controller/teams_c.dart';

class FootballB implements Bindings {
  @override
  void dependencies() {
    Get.put(TeamsController());
  }
}