import 'dart:async';

import 'package:flutter/material.dart';

class ThemeBloc{

  final _themeConrtoller=StreamController<AppTheme>();

  StreamSink<AppTheme> get themeSink=>_themeConrtoller.sink;
  Stream<AppTheme> get themeStream=>_themeConrtoller.stream;

}
enum AppTheme{
  GreenLight,
  GreenDark
}
getTheme(AppTheme theme){

  if(theme==AppTheme.GreenLight){

    return ThemeData(
      brightness: Brightness.light
    );
  }
  else
    return ThemeData(
      brightness: Brightness.dark
    );
}
var themeBloc=ThemeBloc();