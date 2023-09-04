import 'package:counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterAIncrement());

  int teamAPoint = 0;

  int teamBPoint = 0;

  void TeamIncrement ({required String team, required int buttonNumber}){
    if(team == 'A'){
      teamAPoint += buttonNumber;
      emit(CounterAIncrement());
    }else if(team == 'B'){
      teamBPoint += buttonNumber;
      emit(CounterBIncrement());
    }else{
      teamAPoint = 0;
      teamBPoint = 0;
      emit(CounterIncrementReset());
    }
  }
}