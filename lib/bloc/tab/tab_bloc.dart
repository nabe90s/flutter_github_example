import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_example/bloc/tab/tab_event.dart';
import 'package:flutter_github_example/model/tab.dart';

class TabBloc extends Bloc<TabEvent, HomeTab> {
  TabBloc() : super(HomeTab.repo);

  @override
  Stream<HomeTab> mapEventToState(TabEvent event) async* {
    if (event is TabUpdated) {
      yield event.tab;
    }
  }
}
