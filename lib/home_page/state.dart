import 'package:fish_redux/fish_redux.dart';
import 'package:five_weeks/account_page/page.dart';
import 'package:five_weeks/daily_page/page.dart';
import 'package:five_weeks/discovery_page/page.dart';
import 'package:five_weeks/five_weeks_style/five_weeks_color.dart';
import 'package:five_weeks/history_page/page.dart';
import 'package:five_weeks/home_page/common/bottom_tab_info.dart';
import 'package:five_weeks/inbox_page/page.dart';
import 'package:flutter/material.dart';

class HomeState extends ComponentState<HomeState> with Cloneable<HomeState>, TickerProviderStateMixin {
  static List<BottomTabInfo> tabs = [
    BottomTabInfo(
      BottomTabType.Discovery,
      Icon(Icons.today, color: FiveWeeksColors.grey),
      Icon(Icons.today, color: FiveWeeksColors.sweetRed),
      DiscoveryPage().buildPage(<String, dynamic>{}),
    ),
    BottomTabInfo(
      BottomTabType.History,
      Icon(Icons.history, color: FiveWeeksColors.grey),
      Icon(Icons.history, color: FiveWeeksColors.sweetRed),
      HistoryPage().buildPage(<String, dynamic>{}),
    ),
    BottomTabInfo(
      BottomTabType.Daily,
      Icon(Icons.sentiment_very_satisfied, color: FiveWeeksColors.grey),
      Icon(Icons.sentiment_very_satisfied, color: FiveWeeksColors.sweetRed),
      DailyPage().buildPage(<String, dynamic>{}),
    ),
    BottomTabInfo(
      BottomTabType.Inbox,
      Icon(Icons.inbox, color: FiveWeeksColors.grey),
      Icon(Icons.inbox, color: FiveWeeksColors.sweetRed),
      InboxPage().buildPage(<String, dynamic>{}),
    ),
    BottomTabInfo(
      BottomTabType.Account,
      Icon(Icons.account_circle, color: FiveWeeksColors.grey),
      Icon(Icons.account_circle, color: FiveWeeksColors.sweetRed),
      AccountPage().buildPage(<String, dynamic>{}),
    ),
  ];

  PageController pageController;
  int currentIndex;
  int initialIndex = 0;

  @override
  HomeState clone() {
    return HomeState()
      ..pageController = pageController
      ..currentIndex = currentIndex
      ..initialIndex = initialIndex;
  }
}

HomeState initState(Map<String, dynamic> args) {
  HomeState homeState = HomeState();
  homeState.currentIndex = 2;
  homeState.pageController = PageController(initialPage: homeState.currentIndex);
  return homeState;
}
