import 'package:fish_redux/fish_redux.dart';

class DailyState implements Cloneable<DailyState> {
  String week;
  String day;

  @override
  DailyState clone() {
    return DailyState()
      ..week = week
      ..day = day;
  }
}

DailyState initState(Map<String, dynamic> args) {
  return DailyState()
    ..week = 'First Week'
    ..day = 'Day 1';
}
