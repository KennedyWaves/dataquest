import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'TelaQuestionario.dart';
import 'home.dart';
import 'splash.dart';

void main() {
  runApp(new MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [const Locale('pt', 'BR')],
    home: new Splash(),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new Home(),
      '/question': (BuildContext context) => new TelaDeQuestionario(),
    },
  ));
}
