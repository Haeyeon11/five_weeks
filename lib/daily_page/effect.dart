import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DailyState> buildEffect() {
  return combineEffects(<Object, Effect<DailyState>>{
    DailyAction.action: _onAction,
  });
}

void _onAction(Action action, Context<DailyState> ctx) {
}
