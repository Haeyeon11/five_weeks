import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<InboxState> buildEffect() {
  return combineEffects(<Object, Effect<InboxState>>{
    InboxAction.action: _onAction,
  });
}

void _onAction(Action action, Context<InboxState> ctx) {
}
