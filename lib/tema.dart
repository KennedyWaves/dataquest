import 'package:dataquest/likert.dart';

class Tema {
  String _tema;

  String get tema => _tema;
  List<Likert> questao;

  Tema(String theme) {
    _tema = theme;
    questao = <Likert>[];
  }

  double total() {
    if (questao.length < 1) {
      return 0;
    } else {
      double result = 0;
      for (Likert qt in questao) {
        result += (qt.resposta / 40);
      }
      return result;
    }
  }
}
