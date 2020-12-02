import 'package:fish_redux/fish_redux.dart';

class InboxState implements Cloneable<InboxState> {

  @override
  InboxState clone() {
    return InboxState();
  }
}

InboxState initState(Map<String, dynamic> args) {
  return InboxState();
}
