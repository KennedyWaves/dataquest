import 'tema.dart';

class Eixo {
  String nome;
  List<Tema> tema = <Tema>[];
  String observacoes;
  int id;
  Eixo(this.id, this.nome);

  @override
  String toString(){
    return this.nome;
  }

  String todosOsTemas(String ii) {
    String result = "";
    for (Tema theme in tema) {
      result += theme.headerDoTema(ii) + "$ii";
    }
    return result;
  }

  String todasAsQuestoes(String ii) {
    String result = "";
    for (Tema theme in tema) {
      result += theme.todasAsQuestoes(ii)+"$ii";
    }
    return result+"OBSERVAÇÕES$ii";
  }

  String todasAsRespostas(String ii) {
    String result = "";
    for (Tema theme in tema) {
      result += theme.todasAsRespostas(ii)+"$ii";
    }
    return result+"${this.observacoes}$ii";
  }
}
