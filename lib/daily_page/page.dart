import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DailyPage extends Page<DailyState, Map<String, dynamic>> {
  DailyPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<DailyState>(adapter: null, slots: <String, Dependent<DailyState>>{}),
          middleware: <Middleware<DailyState>>[],
        );
}
