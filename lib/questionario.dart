import 'package:dataquest/pesssoa.dart';
import 'package:intl/intl.dart';

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
  int id;
  Questionario(this.id);

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

  static String toCsv(Questionario quest, [String separador]) {
    if (separador == null) {
      separador = ",";
    }
    String line0 = "${quest.eixo}$separador";
    String line1 =
        "METADATA$separador$separador$separador$separador$separador$separador$separador${quest.todosOsTemas()}$separador$separador";
    String line2 =
        "NOME${separador}DATA_NASCIMENTO${separador}GENERO${separador}ATIV_LABORAL${separador}FORMACAO${separador}LOCALIDADE${separador}TIMESTAMP$separador${quest.todasAsQuestoes()}${separador}OBSERVACOES$separador";
    String line3 =
        "${quest.pessoa.nome}$separador${quest.pessoa.dataNascimentoText()}$separador${quest.pessoa.genero}$separador${quest.pessoa.trabalho}$separador${quest.pessoa.formacao}$separador${quest.pessoa.localidade}$separador${quest.timestamp}$separador${quest.todasAsRespostas()}$separador${quest.pessoa.observacoes}$separador";
    String result = line1 + "\n" + line2 + "\n" + line3;
    int howMany = separador.allMatches(line3).length;
    for (int x = 1; x < howMany; x++) {
      line0 += "$separador";
    }
    return line0 + "\n" + result;
  }

}
