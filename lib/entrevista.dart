import 'package:intl/intl.dart';

import 'eixo.dart';
import 'pesssoa.dart';

class Entrevista {
  Pessoa pessoa = new Pessoa();
  List<Eixo> eixo;
  String endTime;
  String startTime;

  void start() {
    //print("A ENTREVISTA COMEÇOU!");
    startTime = new DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  }

  void end() {
    endTime = new DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  }

  String todosOsTemas(String ii) {
    String result = "";
    for (Eixo eixo_ in eixo) {
      result += eixo_.todosOsTemas(ii);
    }
    return result;
  }

  String todasAsQuestoes(String ii) {
    String result = "";
    for (Eixo eixo_ in eixo) {
      result += eixo_.todasAsQuestoes(ii);
    }
    return result;
  }

  String todasAsRespostas(String ii) {
    String result = "";
    for (Eixo eixo_ in eixo) {
      result += eixo_.todasAsRespostas(ii);
    }
    return result;
  }

  String toCsv([String ii]) {
    if (ii == null) {
      ii = ",";
    }

    String line0 = "DATAQUEST 0.1 - PROCAD-AMAZONIA - UFPA - DESENVOLVEDORES: BEL. KENNEDY SOUZA E BEL. IGOR AVIZ - COORDENAÇÃO: PROF. DR. MARCOS SERUFFO$ii$ii$ii$ii$ii$ii$ii$ii";
    for (Eixo eixo_ in this.eixo) {
      line0 += eixo_.toString();
      int howMany = ii.allMatches(eixo_.todasAsRespostas(ii)).length;
      for (int x = 1; x < howMany; x++) {
        line0 += "$ii";
      }
    }
    String line1 =
        "METADATA$ii$ii$ii$ii$ii$ii$ii$ii${this.todosOsTemas(ii)}";
    String line2 =
        "NOME${ii}DATA_NASCIMENTO${ii}GENERO${ii}ATIV_LABORAL${ii}FORMACAO${ii}LOCALIDADE${ii}STARTTIME${ii}ENDTIME$ii${this.todasAsQuestoes(ii)}";
    String line3 =
        "${this.pessoa.nome}$ii${this.pessoa.dataNascimentoText()}$ii${this.pessoa.genero}$ii${this.pessoa.trabalho}$ii${this.pessoa.formacao}$ii${this.pessoa.localidade}$ii${this.startTime}$ii${this.endTime}$ii${this.todasAsRespostas(ii)}";
    String result = line1 + "\n" + line2 + "\n" + line3;
    return line0 + "\n" + result;
  }
}
