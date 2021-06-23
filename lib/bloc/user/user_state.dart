import 'package:equatable/equatable.dart';
import 'package:flutter_github_example/model/user.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserLoadInProgress extends UserState {}

class UserLoadSuccess extends UserState {
  final User user;

  const UserLoadSuccess({required this.user});

  @override
  List<Object?> get props => [user];

  @override
  String toString() {
    return 'UserLoadSuccess{ user: $user }';
  }
}

class UserLoadFailure extends UserState {}
