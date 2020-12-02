import 'package:five_weeks/five_weeks_style/five_weeks_color.dart';
import 'package:five_weeks/five_weeks_style/five_weeks_typography.dart';
import 'package:flutter/material.dart';

enum BottomTabType {
  Discovery,
  History,
  Daily,
  Inbox,
  Account,
}

class BottomTabInfo {
  BottomTabInfo(this.type, this.icon, this.activeIcon, this.page);

  final BottomTabType type;
  final Widget icon;
  final Widget activeIcon;
  final Widget page;

  String get tabTitle {
    String title;
    switch (type) {
      case BottomTabType.Discovery:
        title = 'Discovery';
        break;
      case BottomTabType.History:
        title = 'History';
        break;
      case BottomTabType.Daily:
        title = 'Daily';
        break;
      case BottomTabType.Inbox:
        title = 'Inbox';
        break;
      case BottomTabType.Account:
        title = 'Account';
        break;
      default:
    }
    return title;
  }

  BottomNavigationBarItem buildItem(int currentIndex) {
    return BottomNavigationBarItem(
      icon: _buildIcons(itemIcon: icon),
      activeIcon: _buildIcons(itemIcon: activeIcon),
      title: _buildNormalText(tabTitle),
    );
  }
}

Widget _buildIcons({Widget itemIcon}) {
  return SizedBox(
    width: 24.0,
    height: 24.0,
    child: itemIcon,
  );
}

Widget _buildNormalText(String iconName) {
  return Text(
    iconName,
    style: FiveWeeksFont.headline7(color: FiveWeeksColors.grey),
  );
}
