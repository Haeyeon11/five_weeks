import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.action: _onAction,
      HomeAction.reducerOnTapBottomBarItem: _reducerOnTapBottomBarItem,
    },
  );
}

HomeState _onAction(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}

HomeState _reducerOnTapBottomBarItem(HomeState state, Action action) {
  final HomeState newState = state.clone();
  newState.currentIndex = action.payload;
  newState.pageController.jumpToPage(action.payload);
  return newState;
}
