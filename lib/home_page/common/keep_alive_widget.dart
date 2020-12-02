import 'package:flutter/widgets.dart';

class KeepAliveWidget extends StatefulWidget {
  const KeepAliveWidget(this.child);
  final Widget child;

  @override
  State createState() => KeepAliveState();
}

class KeepAliveState extends State<KeepAliveWidget> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    updateKeepAlive();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

Widget keepAliveWrapper(Widget child) {
  return KeepAliveWidget(child);
}
