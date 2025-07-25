import 'package:flutter/material.dart';

class GridViewCountPage extends StatefulWidget {
  const GridViewCountPage({super.key});

  @override
  State<GridViewCountPage> createState() => _GridViewCountPageState();
}

class _GridViewCountPageState extends State<GridViewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Example'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        children: List.generate(100, (index) {
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
      )
    );
  }
}