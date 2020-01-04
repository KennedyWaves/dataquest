import 'package:dataquest/likert.dart';
import 'package:flutter/material.dart';
class Tema {
  String _nome;
  String observacoes;

  String get nome => _nome;
  Color cor = Colors.white;
  Color corPergunta = Colors.white;
  List<Likert> questao;

  Tema(String theme, {MaterialColor cor}) {
    _nome = theme;
    this.cor = cor[500] ?? this.cor;
    this.corPergunta = cor[50] ?? this.corPergunta;
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
    String result = nome;
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
