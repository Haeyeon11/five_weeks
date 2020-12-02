import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { action, reducerOnTapBottomBarItem }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }

  static Action reducerOnTapBottomBarItem(int index) {
    return Action(HomeAction.reducerOnTapBottomBarItem, payload: index);
  }
}
