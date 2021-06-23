import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/user/user_event.dart';
import 'package:flutter_github_example/bloc/user/user_state.dart';
import 'package:flutter_github_example/repository/github_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GithubRepository githubRepository;

  UserBloc({required this.githubRepository}) : super(UserLoadInProgress());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoaded) {
      yield* _mapUserLoadedToState(event);
    }
  }

  Stream<UserState> _mapUserLoadedToState(UserLoaded event) async* {
    try {
      final user = await this.githubRepository.loadUser(event.userId);
      yield UserLoadSuccess(user: user);
    } catch (_) {
      yield UserLoadFailure();
    }
  }
}
