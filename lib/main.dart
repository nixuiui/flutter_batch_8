import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_6/pages/counter_page.dart';
import 'package:flutter_batch_8/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // initialRoute: AppRoutes.homeTab,
      home: CounterPage(),
    );
  }
}

