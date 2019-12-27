import 'dart:math';
import 'package:dataquest/questionario.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Utils{
  static String questToCsv(Questionario quest,[String separador]){
    if(separador==null){
      separador = ",";
    }
    String line0 = "${quest.eixo}$separador";
    String line1 = "METADATA$separador $separador $separador${quest.TodosOsTemas()}$separador $separador";
    String line2 = "NOME${separador}DATA_NASCIMENTO${separador}TIMESTAMP$separador${quest.todasAsQuestoes()}${separador}OBSERVACOES$separador";
    String line3  ="${quest.pessoa.nome}$separador${quest.pessoa.dataNascimentoText()}$separador${quest.timestamp}$separador${quest.todasAsRespostas()}$separador${quest.observacoes}$separador";
    String result = line1+"\n"+line2+"\n"+line3;
    int howMany = separador.allMatches(line3).length;
    for( int x = 1;x<howMany;x++){
      line0+=" $separador";
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