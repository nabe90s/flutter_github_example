import 'package:dio/dio.dart';
import 'package:flutter_github_example/model/repo.dart';
import 'package:flutter_github_example/model/user.dart';
import 'package:retrofit/http.dart';

part 'github_client.g.dart';

class GithubApi {
  static const String users = "users/{userId}";
  static const String repos = "users/{userId}/repos";
}

@RestApi(baseUrl: "https://api.github.com/")
abstract class GithubClient {
  factory GithubClient(Dio dio, {String baseUrl}) = _GithubClient;

  @GET(GithubApi.users)
  Future<User> getUser(@Path("userId") String userId);

  @GET(GithubApi.repos)
  Future<List<Repo>> getRepos(@Path("userId") String userId);
}
