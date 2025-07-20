import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {

  final int counterValue;  

  const CounterWidget({
    super.key,
    required this.counterValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Show counter value here:'),
        Text(
          "$counterValue",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}