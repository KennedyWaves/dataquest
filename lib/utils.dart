import 'dart:math';
import 'package:dataquest/questionario.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Utils{

  static String questToCsv(Questionario quest,[String separator]){
    if(separator==null){
      separator = ",";
    }
    String line0 = "${quest.eixo};";
    String line1 = "METADATA; ; ;${quest.TodosOsTemas()};";
    String line2 = "NOME;DATA_NASCIMENTO;TIMESTAMP;+${quest.todasAsQuestoes()};";
    String line3  ="${quest.pessoa.nome};${quest.pessoa.dataNascimentoText()};${quest.timestamp};${quest.todasAsRespostas()};";
    String result = line1+"\n"+line2+"\n"+line3;
    int howMany = separator.allMatches(result).length;
    for( int x = 1; x<howMany;x++){
      line0+=" ;";
    }
    return line0+"\n"+result;
  }

  static write(String text, String filename) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$filename');
    await file.writeAsString(text);
  }

  static double filter(double value, {double maximum, double minimum}){
    if(max!=null && min != null){
      return [[value,minimum].reduce(max),maximum].reduce(min);
    }

    if(max!=null && min == null){
      return [value, maximum].reduce(min);
    }

    if(max==null && min != null){
      return [value, minimum].reduce(max);
    }
    return value;
  }
}