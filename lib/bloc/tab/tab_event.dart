import 'package:equatable/equatable.dart';
import 'package:flutter_github_example/model/tab.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();
}

class TabUpdated extends TabEvent {
  final HomeTab tab;

  const TabUpdated(this.tab);

  @override
  List<Object?> get props => [tab];

  @override
  String toString() => 'TabUpdated { tab: $tab }';
}
