import 'dart:convert';

import 'utils.dart';

class QuestFile {
  static List<QuestFile> outbox = <QuestFile>[];
  bool enviado;
  String nome;
  String profissao;
  String nomeArquivo;
  bool marcado = false;

  QuestFile(
      {this.nome,
      this.profissao,
      this.nomeArquivo,
      this.enviado,
      Function sobeBotao});

  static Future<QuestFile> loadQuestFile(
      String filename, Function sobeBotao) async {
    String content = await Utils.read(filename);
    //dividir content em quebra-linhas
    LineSplitter ls = new LineSplitter();
    //print("conteudo"+content);
    List<String> lines = ls.convert(content);
    //selecionar ultima linha
    String lastLine = lines[3];
    //obter separador
    String splitter = filename[filename.length - 5];
    //print("separador encontrado $splitter");
    //dividir a ultima linha em separadores
    var values = lastLine.split(splitter);
    bool sent = false;
    if (filename.indexOf("§¬") > -1) {
      sent = true;
    }
    //preencher o objeto result;
    return new QuestFile(
        nome: values[0],
        profissao: values[3],
        nomeArquivo: filename,
        enviado: sent,
        sobeBotao: sobeBotao);
  }
}
