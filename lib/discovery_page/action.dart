import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DiscoveryAction { action }

class DiscoveryActionCreator {
  static Action onAction() {
    return const Action(DiscoveryAction.action);
  }
}
