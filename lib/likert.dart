import 'utils.dart';
class Likert{

  String questao = "";
  int _resposta = 0;

  int get resposta => _resposta;

  set resposta(int value) {

    _resposta =  Utils.filter(value.toDouble(), minimum: 0, maximum: 4).toInt();
  }
}