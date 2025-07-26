import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_5/football_club_page.dart';
import 'package:flutter_batch_8/pages/day_5/football_player_page.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: index,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Tab'),
          bottom: TabBar(
            isScrollable: true,
            onTap: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            tabs: const [
              Tab(text: 'Football Clubs'),
              Tab(text: 'Barcelona Players'),
              Tab(text: 'Real Madrid Players'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FootballClubPage(),
            FootballPlayerPage(clubName: 'Barcelona'),
            FootballPlayerPage(clubName: 'Real Madrid'),
          ]
        ),
      ),
    );
  }
}