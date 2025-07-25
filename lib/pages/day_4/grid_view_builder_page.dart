import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatefulWidget {
  const GridViewBuilderPage({super.key});

  @override
  State<GridViewBuilderPage> createState() => _GridViewBuilderPageState();
}

class _GridViewBuilderPageState extends State<GridViewBuilderPage> {

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
        title: const Text('Grid View Builder Example'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
              ),
              children: List.generate(4, (index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[(index % 9 + 1) * 100],
                  child: Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                );
              }),
            );
          }
          return Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  CircleAvatar(
                    child: Text(footballPlayers[index][0]),
                  ),
                  Text(
                    footballPlayers[index],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}