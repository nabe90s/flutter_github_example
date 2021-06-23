import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/repo/repo_event.dart';
import 'package:flutter_github_example/bloc/repo/repo_state.dart';
import 'package:flutter_github_example/repository/github_repository.dart';

class RepoBloc extends Bloc<RepoEvent, RepoState> {
  final GithubRepository githubRepository;

  RepoBloc({required this.githubRepository}) : super(RepoLoadInProgress());

  @override
  Stream<RepoState> mapEventToState(RepoEvent event) async* {
    if (event is RepoLoaded) {
      yield* _mapRepoLoadedToState(event);
    }
  }

  Stream<RepoState> _mapRepoLoadedToState(RepoLoaded event) async* {
    try {
      final repos = await this.githubRepository.loadRepos(event.userId);
      yield RepoLoadSuccess(repos);
    } catch (e) {
      print(e.toString());
      yield RepoLoadFailure();
    }
  }
}
