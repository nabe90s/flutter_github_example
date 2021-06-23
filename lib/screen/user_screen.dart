import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/user/user_bloc.dart';
import 'package:flutter_github_example/bloc/user/user_state.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserLoadInProgress) {
          return Center(
            key: Key("user_loading"),
            child: CircularProgressIndicator(),
          );
        } else if (state is UserLoadSuccess) {
          final u = state.user;
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(u.avatarUrl),
              ),
              title: Text(
                u.login,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(u.name),
            ),
          );
        } else {
          return Container(key: Key("user_empty_container"));
        }
      },
    );
  }
}
