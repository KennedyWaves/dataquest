import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'home.dart';
import 'TelaQuestionario.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(new MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [const Locale('pt', 'BR')],
    home: new splash(),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new Home(),
      '/question': (BuildContext context) => new TelaDeQuestionario(),
    },
  ));
}
