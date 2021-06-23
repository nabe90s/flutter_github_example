import 'package:flutter_github_example/model/repo.dart';
import 'package:flutter_github_example/model/user.dart';
import 'package:flutter_github_example/repository/data/github_client.dart';

abstract class GithubRepository {
  Future<User> loadUser(String userId);

  Future<List<Repo>> loadRepos(String userId);
}

class GithubRepositoryImpl implements GithubRepository {
  final GithubClient client;

  const GithubRepositoryImpl({
    required this.client,
  });

  @override
  Future<List<Repo>> loadRepos(String userId) async {
    return await this.client.getRepos(userId);
  }

  @override
  Future<User> loadUser(String userId) async {
    return await this.client.getUser(userId);
  }
}
