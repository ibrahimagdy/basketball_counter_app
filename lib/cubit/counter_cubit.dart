import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncreamnt({required String team, required int pointsNumber}){
    if(team == 'A'){
      teamAPoints += pointsNumber;
      emit(CounterAIncrementState());
    }
    else{
      teamBPoints += pointsNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetPoints(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}