import 'package:flutter/material.dart';

class FootballPlayerPage extends StatefulWidget {

  final String clubName;

  const FootballPlayerPage({
    super.key,
    required this.clubName
  });

  @override
  State<FootballPlayerPage> createState() => _FootballPlayerPageState();
}

class _FootballPlayerPageState extends State<FootballPlayerPage> {

  final Map<String, List<String>> footballPlayers = {
    'Barcelona': ['Lionel Messi', 'Xavi Hernandez', 'Andres Iniesta'],
    'Real Madrid': ['Cristiano Ronaldo', 'Zinedine Zidane', 'Raul'],
    'Manchester United': ['David Beckham', 'Eric Cantona', 'Ryan Giggs'],
    'Bayern Munich': ['Franz Beckenbauer', 'Gerd Muller', 'Philipp Lahm'],
    'Paris Saint-Germain': ['Ronaldinho', 'Zlatan Ibrahimovic', 'Kylian Mbappe'],
  };

  var ballonDorWinner = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.clubName}\'s Football Players'),
      ),
      body: ListView.builder(
        itemCount: footballPlayers[widget.clubName]?.length ?? 0,
        itemBuilder: (context, index) {
          String player = footballPlayers[widget.clubName]![index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(player[0]),
            ),
            title: Text(player),
            trailing: ballonDorWinner == player
                ? const Icon(Icons.star, color: Colors.yellow)
                : null,
            selected: ballonDorWinner == player,
            onTap: () => setState(() {
              ballonDorWinner = player;
            }),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: FilledButton(
            onPressed: ballonDorWinner != '' ? () {
              Navigator.pop(context, ballonDorWinner);
            } : null,
            child: const Text('Select Ballon d\'Or Winner'),
          ),
        ),
      ),
    );
  }
}