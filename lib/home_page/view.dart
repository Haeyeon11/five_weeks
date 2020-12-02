import 'package:fish_redux/fish_redux.dart';
import 'package:five_weeks/home_page/common/bottom_tab_info.dart';
import 'package:five_weeks/home_page/common/keep_alive_widget.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: _buildPageView(state, dispatch, viewService),
    bottomNavigationBar: _buildBottomBar(state, dispatch, viewService),
  );
}

Widget _buildPageView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return PageView.builder(
    physics: const NeverScrollableScrollPhysics(),
    onPageChanged: (int index) {},
    controller: state.pageController,
    itemCount: HomeState.tabs.length,
    itemBuilder: (BuildContext context, int index) {
      return KeepAliveWidget(HomeState.tabs[index].page);
    },
  );
}

Widget _buildBottomBar(HomeState state, Dispatch dispatch, ViewService viewService) {
  List<BottomNavigationBarItem> bottomNavigationBarItem = [];
  for (BottomTabInfo homeTabItem in HomeState.tabs) {
    bottomNavigationBarItem.add(homeTabItem.buildItem(state.currentIndex));
  }
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: bottomNavigationBarItem,
    currentIndex: state.currentIndex,
    onTap: (int index) {
      dispatch(HomeActionCreator.reducerOnTapBottomBarItem(index));
    },
  );
}
