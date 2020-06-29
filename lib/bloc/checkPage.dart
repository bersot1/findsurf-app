import 'package:flutter/cupertino.dart';

class CheckPageBloc extends ChangeNotifier {
  String stateSelected = "Espirito Santo";
  String citySelected = "Vila Velha";
  DateTime dateSelected = DateTime.now();

  changeCity(String newCity) {
    citySelected = newCity;
    notifyListeners();
  }

  changeState(String newState) {
    stateSelected = newState;
    notifyListeners();
  }

  changeDate(DateTime newDate) {
    dateSelected = newDate;
    notifyListeners();
  }
}
