import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class UserLoaded extends UserEvent {
  final String userId;

  const UserLoaded(this.userId);

  @override
  List<Object?> get props => [userId];

  @override
  String toString() {
    return 'UserLoaded{ userId: $userId }';
  }
}
