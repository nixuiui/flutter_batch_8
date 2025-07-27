import 'package:flutter_batch_8/pages/day_6/cubits/football_player_state.dart';
import 'package:flutter_batch_8/utils/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FootballPlayerCubit extends Cubit<FootballPlayerState> {
  FootballPlayerCubit() : super(const FootballPlayerState());

  void setClub(String club) {
    emit(FootballPlayerState(club: club, players: footballPlayers[club]));
  }
}