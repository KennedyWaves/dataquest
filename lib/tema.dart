import 'package:dataquest/likert.dart';

class Tema {
  String _tema;
  String observacoes;
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

  String headerDoTema(){
    String result = tema;
    for(int x = 0; x<questao.length-1;x++){
      result+=";";
    }
    return result;
  }

  String todasAsQuestoes(){
    String result = "";
    for(Likert likert in questao){
      result+=likert.questao+";";
    }
    return result;
  }
  String todasAsRespostas(){
    String result = "";
    for(Likert likert in questao){
      result+=likert.resposta.toString()+";";
    }
    return result;
  }
}
