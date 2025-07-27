import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_6/cubits/football_player_cubit.dart';
import 'package:flutter_batch_8/pages/day_6/cubits/football_player_state.dart';
import 'package:flutter_batch_8/pages/day_6/cubits/theme_cubit.dart';
import 'package:flutter_batch_8/utils/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FootballPlayerPage extends StatefulWidget {
  const FootballPlayerPage({super.key});

  @override
  State<FootballPlayerPage> createState() => _FootballPlayerPageState();
}

class _FootballPlayerPageState extends State<FootballPlayerPage> {

  final cubit = FootballPlayerCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<FootballPlayerCubit, FootballPlayerState>(
          bloc: cubit,
          builder: (context, state) {
            return Text('Football Players: ${state.club ?? '-'}');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
            icon: Icon(
              context.watch<ThemeCubit>().state == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),

          PopupMenuButton<String>(
            onSelected: (club) {
              cubit.setClub(club);
            },
            itemBuilder: (context) {
              return footballPlayers.keys.map((club) => PopupMenuItem<String>(
                  value: club,
                  child: Text(club),
                ))
                .toList();
            },
          ),
        ],
      ),
      body: BlocBuilder<FootballPlayerCubit, FootballPlayerState>(
        bloc: cubit,
        builder: (context, state) {
          if (state.players == null) {
            return Center(child: const Text('No players available'));
          }
          return ListView.builder(
            itemCount: state.players!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(state.players![index][0]),
                ),
                title: Text(state.players![index]),
              );
            },
          );
        }
      ),
    );
  }
}