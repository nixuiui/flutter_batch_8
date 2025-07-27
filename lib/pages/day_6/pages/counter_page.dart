import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_5/football_club_page.dart';
import 'package:flutter_batch_8/pages/day_6/cubits/counter_cubit.dart';
import 'package:flutter_batch_8/widgets/counter_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final cubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CounterCubit, int>(
          bloc: cubit,
          listener: (context, state) {
            if(state % 5 == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Counter reached $state!'))
              );
            }
            if(state == 17) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => FootballClubPage(),
              ));
            }
          }
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Counter Page'),
        ),
        body: Center(
          child: BlocBuilder<CounterCubit, int>(
            bloc: cubit,
            builder: (context, state) {
              return CounterWidget(counterValue: state);
            }
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 8,
          children: [
            FloatingActionButton(
              onPressed: cubit.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: cubit.decrement,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: cubit.reset,
              tooltip: 'Reset',
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}