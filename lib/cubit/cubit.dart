import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piontscounter/cubit/state.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit():super(CounterInitialStates());
  static  CounterCubit get(context)=>BlocProvider.of(context);
  int teamApoints =0;
  int teamBpoints=0;
  void Add1Point()
  {
    teamApoints++;
    emit(CounterChandeAStates(teamApoints));
  }
  void Add2Point()
  {
    teamApoints+=2;
    emit(CounterChandeAStates(teamApoints));
  }
  void Add3Point()
  {
    teamApoints+=3;
    emit(CounterChandeAStates(teamApoints));
  }

  void Add1bPoint()
  {
    teamBpoints++;
    emit(CounterChandeBStates(teamApoints));
  }
  void Add2bPoint()
  {
    teamBpoints+=2;
    emit(CounterChandeBStates(teamApoints));
  }
  void Add3bPoint()
  {
    teamBpoints+=3;
    emit(CounterChandeBStates(teamApoints));
  }
  void Reset()
  {
    teamBpoints=0;
    teamApoints=0;
    emit(CounterResetStates());
  }
}