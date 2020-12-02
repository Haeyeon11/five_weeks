import 'package:fish_redux/fish_redux.dart';
import 'package:five_weeks/five_weeks_style/five_weeks_typography.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(DailyState state, Dispatch dispatch, ViewService viewService) {
  return ListView(
    children: [
      Container(
        margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
        child: Text(
          '${state.week} - ${state.day}',
          style: FiveWeeksFont.headline3(),
        ),
      ),
      buildMileMessage('BreakFast'),
      buildMileMessage('Launch'),
      buildMileMessage('Dinner'),
    ],
  );
}

Widget buildMileMessage(String title) {
  return Container(
    margin: const EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 50.0),
    height: 100.0,
    color: Colors.green,
    child: Text(
      title,
      style: FiveWeeksFont.headline5(color: Colors.white),
    ),
  );
}
