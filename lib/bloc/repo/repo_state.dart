import 'package:equatable/equatable.dart';
import 'package:flutter_github_example/model/repo.dart';

abstract class RepoState extends Equatable {
  const RepoState();

  @override
  List<Object?> get props => [];
}

class RepoLoadInProgress extends RepoState {}

class RepoLoadSuccess extends RepoState {
  final List<Repo> repos;

  const RepoLoadSuccess(this.repos);

  @override
  List<Object?> get props => [repos];

  @override
  String toString() {
    return 'RepoLoadSuccess{ repos: $repos}';
  }
}

class RepoLoadFailure extends RepoState {}
