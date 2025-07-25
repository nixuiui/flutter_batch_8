import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Example'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
        ),
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