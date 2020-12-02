import 'package:five_weeks/home_page/page.dart';
import 'package:flutter/material.dart';

class FiveWeeksRouteNameSpace {
  static String homePage = '/home_page';
}

Map<String, WidgetBuilder> fiveWeeksRoutes = {
  FiveWeeksRouteNameSpace.homePage: (context) => HomePage().buildPage(null),
};
