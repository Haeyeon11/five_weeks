import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DailyAction { action }

class DailyActionCreator {
  static Action onAction() {
    return const Action(DailyAction.action);
  }
}
