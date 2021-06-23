import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/tab/tab_bloc.dart';
import 'package:flutter_github_example/bloc/tab/tab_event.dart';
import 'package:flutter_github_example/model/tab.dart';
import 'package:flutter_github_example/screen/repo_screen.dart';
import 'package:flutter_github_example/screen/user_screen.dart';
import 'package:flutter_github_example/widgets/tab_selector.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, HomeTab>(builder: (context, activeTab) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Github Example"),
        ),
        body: activeTab == HomeTab.repo ? RepoScreen() : UserScreen(),
        bottomNavigationBar: HomeTabSelector(
          key: Key("home_tab_selector"),
          activeTab: activeTab,
          onTabSelected: (tab) =>
              BlocProvider.of<TabBloc>(context).add(TabUpdated(tab)),
        ),
      );
    });
  }
}
