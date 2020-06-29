import 'package:flutter/cupertino.dart';

class HomePageBloc extends ChangeNotifier {
  String citySelected = "Vitoria";
  String categorySelected = "Prancha";

  changeCity(String newCity) {
    citySelected = newCity;
    notifyListeners();
  }
}
