import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_5/football_club_page.dart';
import 'package:flutter_batch_8/pages/day_5/football_player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        FootballClubPage(),
        FootballPlayerPage(clubName: 'Barcelona'),
        FootballPlayerPage(clubName: 'Real Madrid'),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Football Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Barcelona Players',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Real Madrid Players',
          ),
        ],
      ),
    );
  }
}