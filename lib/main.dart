import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/repo/repo_bloc.dart';
import 'package:flutter_github_example/bloc/repo/repo_event.dart';
import 'package:flutter_github_example/bloc/tab/tab_bloc.dart';
import 'package:flutter_github_example/bloc/user/user_bloc.dart';
import 'package:flutter_github_example/bloc/user/user_event.dart';
import 'package:flutter_github_example/repository/data/github_client.dart';
import 'package:flutter_github_example/repository/github_repository.dart';
import 'package:flutter_github_example/routes.dart';
import 'package:flutter_github_example/screen/home_screen.dart';
import 'package:flutter_github_example/theme.dart';

import 'bloc/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(GithubApp());
}

class GithubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Github App",
      theme: MyTheme.theme,
      routes: {
        MyRoutes.home: (context) {
          final repository = GithubRepositoryImpl(
              client: GithubClient(
                  Dio(BaseOptions(contentType: "application/json"))));
          return MultiBlocProvider(
            providers: [
              BlocProvider<TabBloc>(
                create: (context) => TabBloc(),
              ),
              BlocProvider<RepoBloc>(
                create: (context) => RepoBloc(githubRepository: repository)
                  ..add(RepoLoaded("nabe90s")),
              ),
              BlocProvider<UserBloc>(
                create: (context) => UserBloc(githubRepository: repository)
                  ..add(UserLoaded("nabe90s")),
              )
            ],
            child: HomeScreen(),
          );
        }
      },
    );
  }
}
