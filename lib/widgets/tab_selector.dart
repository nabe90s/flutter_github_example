import 'package:flutter/material.dart';
import 'package:flutter_github_example/model/tab.dart';

class HomeTabSelector extends StatelessWidget {
  final HomeTab activeTab;
  final Function(HomeTab) onTabSelected;

  HomeTabSelector({
    Key? key,
    required this.activeTab,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: Key("bottom_navigation_bar"),
      currentIndex: HomeTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected.call(HomeTab.values[index]),
      items: HomeTab.values.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(
            tab == HomeTab.repo ? Icons.list : Icons.verified_user,
            key: tab == HomeTab.repo ? Key("tab_repo") : Key("tab_user"),
          ),
          label: tab == HomeTab.repo ? "Repos" : "User",
        );
      }).toList(),
    );
  }
}
