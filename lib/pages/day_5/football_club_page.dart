import 'package:flutter/material.dart';
import 'package:flutter_batch_8/utils/routes.dart';

class FootballClubPage extends StatefulWidget {
  const FootballClubPage({super.key});

  @override
  State<FootballClubPage> createState() => _FootballClubPageState();
}

class _FootballClubPageState extends State<FootballClubPage> {

  final footballClubs = [
    'Barcelona',
    'Real Madrid',
    'Manchester United',
    'Bayern Munich',
    'Paris Saint-Germain',
  ];

  var ballonDorWinner = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Clubs'),
      ),
      body: ListView.builder(
        itemCount: footballClubs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(footballClubs[index][0]),
            ),
            title: Text(footballClubs[index]),
            onTap: () async {
              final result = await Navigator.pushNamed(
                context,
                AppRoutes.footballPlayer,
                arguments: footballClubs[index],
              );
              if((result as String?)?.isNotEmpty ?? false) {
                setState(() {
                  ballonDorWinner = result as String;
                });
              }
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(child: Text(
        ballonDorWinner,
        textAlign: TextAlign.center,
      )),
    );
  }
}