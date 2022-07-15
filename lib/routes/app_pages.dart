
import 'package:football/pages/detail_page.dart';
import 'package:get/get.dart';
import 'package:football/binding/footballB.dart';
import 'package:football/pages/football_page.dart';
import 'package:football/routes/route_name.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.football,
      page: () => FootballPage(),
      binding: FootballB()
    ),
  ];
}