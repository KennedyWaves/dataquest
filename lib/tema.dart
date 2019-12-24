import 'package:dataquest/likert.dart';

class Tema {
  String tema;
  List<Likert> questoes;

  Tema(String theme) {
    tema = theme;
    questoes = <Likert>[];
  }

  double total() {
    if (questoes.length < 1) {
      return 0;
    } else {
      double result = 0;
      for (Likert qt in questoes) {
        result += (qt.resposta / 40);
      }
      return result;
    }
  }
}
