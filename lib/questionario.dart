//import 'package:intl/intl.dart';
import 'package:dataquest/pesssoa.dart';
import 'tema.dart';



class Questionario{
  String eixo;
  Pessoa pessoa;
  String timestamp;
  List<Tema> temas;

  Questionario();

  void start() {
    pessoa = new Pessoa();
    //timestamp = new DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    temas = <Tema>[];
  }

}