import 'package:intl/intl.dart';
import 'package:dataquest/pesssoa.dart';
import 'tema.dart';



class Questionario{
  String eixo;
  Pessoa pessoa;
  String timestamp;
  List<Tema> tema;
  String observacoes;

  Questionario();

  void start() {
    pessoa = new Pessoa();
    tema = <Tema>[];
  }

  void end(){
    timestamp = new DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  }

  String TodosOsTemas(){
    String result = "";
    for(Tema theme in tema){
      result+=theme.headerDoTema()+";";
    }
    return result;
  }

  String todasAsQuestoes(){
    String result = "";
    for(Tema theme in tema){
      result+=theme.todasAsQuestoes()+";";
    }
    return result;
  }

  String todasAsRespostas(){
    String result = "";
    for(Tema theme in tema){
      result+=theme.todasAsRespostas()+";";
    }
    return result;
  }

  }