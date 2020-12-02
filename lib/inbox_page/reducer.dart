import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<InboxState> buildReducer() {
  return asReducer(
    <Object, Reducer<InboxState>>{
      InboxAction.action: _onAction,
    },
  );
}

InboxState _onAction(InboxState state, Action action) {
  final InboxState newState = state.clone();
  return newState;
}
