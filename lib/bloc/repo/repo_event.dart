import 'package:equatable/equatable.dart';

abstract class RepoEvent extends Equatable {
  const RepoEvent();

  @override
  List<Object?> get props => [];
}

class RepoLoaded extends RepoEvent {
  final String userId;

  const RepoLoaded(this.userId);

  @override
  List<Object?> get props => [userId];

  @override
  String toString() {
    return 'RepoLoaded{ userId: $userId }';
  }
}
