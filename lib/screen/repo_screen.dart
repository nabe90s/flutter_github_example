import 'package:flutter/material.dart';
import 'package:flutter_github_example/bloc/repo/repo_bloc.dart';
import 'package:flutter_github_example/bloc/repo/repo_state.dart';
import 'package:flutter_github_example/model/repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepoScreen extends StatelessWidget {
  const RepoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoBloc, RepoState>(
      builder: (context, state) {
        if (state is RepoLoadInProgress) {
          return Center(
            key: Key("repo_loading"),
            child: CircularProgressIndicator(),
          );
        } else if (state is RepoLoadSuccess) {
          return _buildListView(context, state.repos);
        } else {
          return Container(key: Key("repo_empty_container"));
        }
      },
    );
  }

  // build list view & its tile
  Widget _buildListView(BuildContext context, List<Repo> repos) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final repo = repos[index];
        return Card(
          child: ListTile(
            title: Text(
              repo.name,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(repo.fullName),
          ),
        );
      },
      itemCount: repos.length,
    );
  }
}
