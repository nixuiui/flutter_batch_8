import 'package:equatable/equatable.dart';

class FootballPlayerState extends Equatable {

  final String? club;
  final List<String>? players;

  const FootballPlayerState({
    this.club,
    this.players,
  });

  @override
  List<Object?> get props => [club, players];
}