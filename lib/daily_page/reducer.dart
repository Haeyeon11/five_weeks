import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DailyState> buildReducer() {
  return asReducer(
    <Object, Reducer<DailyState>>{
      DailyAction.action: _onAction,
    },
  );
}

DailyState _onAction(DailyState state, Action action) {
  final DailyState newState = state.clone();
  return newState;
}
