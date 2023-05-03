abstract class CounterStates {}
class CounterInitialStates extends CounterStates{}
class CounterChandeAStates extends CounterStates
{
  final int teamApoints ;
  CounterChandeAStates(this.teamApoints);
}
class CounterChandeBStates extends CounterStates
{
  final int teamBpoints ;
  CounterChandeBStates(this.teamBpoints);
}
class CounterResetStates extends CounterStates {}
