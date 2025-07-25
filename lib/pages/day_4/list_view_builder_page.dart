import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {

  final footballPlayers = [
    'Lionel Messi',
    'Cristiano Ronaldo',
    'Neymar Jr',
    'Kylian Mbappé',
    'Kevin De Bruyne',
    'Mohamed Salah',
    'Robert Lewandowski',
    'Virgil van Dijk',
    'Karim Benzema',
    'Sadio Mané',
    'Harry Kane',
    'Luka Modrić',
    'Eden Hazard',
    'Son Heung-min',
    'Gareth Bale',
    'Paul Pogba',
    'Antoine Griezmann',
    'Raheem Sterling',
    'Sergio Ramos',
    'Gianluigi Donnarumma',
    'Alisson Becker',
    'Ederson Moraes',
    'Marc-André ter Stegen',
    'Thibaut Courtois',
    'Jan Oblak',
    'Manuel Neuer',
    'Kepa Arrizabalaga',
    'Hugo Lloris',
    'David de Gea',
    'Keylor Navas',
    'Edouard Mendy',
    'Jordan Pickford',
    'Bernd Leno',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${footballPlayers.length} players'),
      ),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(footballPlayers[index]),
            subtitle: Text('Player ${index + 1}'),
            leading: CircleAvatar(
              child: Text(footballPlayers[index][0]),
            ),
            onTap: () {
              // Handle item tap
            },
          );
        },
      ),
    );
  }
}