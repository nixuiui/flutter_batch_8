import 'package:flutter/material.dart';
import 'package:flutter_batch_8/pages/day_6/cubits/theme_cubit.dart';
import 'package:flutter_batch_8/pages/day_6/pages/football_player_page.dart';
import 'package:flutter_batch_8/utils/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            routes: routes,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: state,
            // initialRoute: AppRoutes.homeTab,
            home: FootballPlayerPage(),
          );
        }
      ),
    );
  }
}

