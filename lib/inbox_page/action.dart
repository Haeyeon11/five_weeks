import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum InboxAction { action }

class InboxActionCreator {
  static Action onAction() {
    return const Action(InboxAction.action);
  }
}
