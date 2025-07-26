import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_5/football_club_page.dart';
import 'package:flutter_batch_8/pages/day_5/football_player_page.dart';
import 'package:flutter_batch_8/pages/day_5/home_page.dart';
import 'package:flutter_batch_8/pages/day_5/home_tab_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String homeTab = '/homeTab';
  static const String footballClub = '/footballClub';
  static const String footballPlayer = '/footballPlayer';
}

final routes = {
  AppRoutes.homeTab: (context) => const HomeTabPage(),
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.footballClub: (context) => const FootballClubPage(),
  AppRoutes.footballPlayer: (context) => FootballPlayerPage(
    clubName: ModalRoute.of(context)?.settings.arguments as String,
  ),
};