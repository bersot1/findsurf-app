import 'package:findsurf_app/bloc/checkPage.dart';
import 'package:findsurf_app/bloc/homePage.dart';
import 'package:findsurf_app/pages/homePage.dart';
import 'package:findsurf_app/sidebar/sidebarlayout.dart';
import 'package:findsurf_app/themes/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomePageBloc>.value(
          value: HomePageBloc(),
        ),
        ChangeNotifierProvider<CheckPageBloc>.value(
          value: CheckPageBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindSurf',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: SideBarLayout(),
    );
  }
}
