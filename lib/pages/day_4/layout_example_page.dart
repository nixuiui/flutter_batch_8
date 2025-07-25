import 'package:flutter/material.dart';

class LayoutExamplePage extends StatefulWidget {
  const LayoutExamplePage({super.key});

  @override
  State<LayoutExamplePage> createState() => _LayoutExamplePageState();
}

class _LayoutExamplePageState extends State<LayoutExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Example'),
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle search action
                    },
                    icon: Icon(Icons.search)
                  )
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(32),
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}