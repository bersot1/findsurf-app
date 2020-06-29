import 'package:bloc/bloc.dart';
import 'package:findsurf_app/pages/checkPage.dart';

import '../../pages/homePage.dart';

enum NavigationEvents { HomePageClickedEvent, CheckClickedEvent }

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.CheckClickedEvent:
        yield CheckPage();
        break;
    }
  }
}
