import 'package:flutter/cupertino.dart';

class HomePageBloc extends ChangeNotifier {
  String citySelected = "Vitória";
  String categorySelected = "Prancha";

  changeCity(String newCity) {
    citySelected = newCity;
    notifyListeners();
  }
}
