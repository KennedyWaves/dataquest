import 'utils.dart';

class Likert {
  String questao = "";
  int _resposta;


  @override
  toString() {
    return questao;
  }

  Likert(String question, [int response]) {
    questao = question;
    if (response != null) {
      this.resposta = response;
    }
  }

  int get resposta => _resposta;

  set resposta(int value) {
    _resposta = Utils.filter(value.toDouble(), minimum: 0, maximum: 4).toInt();
  }
}
