import 'package:intl/intl.dart';
import 'package:dataquest/pesssoa.dart';
import 'tema.dart';

class Questionario {
  String eixo;
  Pessoa pessoa;
  String timestamp;
  List<Tema> tema;
  String observacoes;
  String trabalho;
  String formacao;
  String localidade;
  String genero;

  String obsT1 = "";
  String obsT2 = "";
  String obsT3 = "";
  String obsT4 = "";
  String obsT5 = "";
  String obsT6 = "";

  Questionario();

  void start() {
    pessoa = new Pessoa();
    tema = <Tema>[];
  }

  void end() {
    timestamp = new DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  }

  String todosOsTemas() {
    String result = "";
    for (Tema theme in tema) {
      result += theme.headerDoTema() + ";";
    }
    return result;
  }

  String testando;
  String todasAsQuestoes() {
    String result = "";
    for (Tema theme in tema) {
      result += theme.todasAsQuestoes();
    }
    testando = result;
    print('$testando');
    return result;
  }

  String todasAsRespostas() {
    String result = "";
    for (Tema theme in tema) {
      result += theme.todasAsRespostas();
    }
    return result;
  }
}
