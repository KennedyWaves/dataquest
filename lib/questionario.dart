import 'package:dataquest/likert.dart';
import 'package:intl/intl.dart';
import 'package:dataquest/pesssoa.dart';



class Questionario{
  String eixo = "";
  Pessoa pessoa = new Pessoa();
  DateFormat timestamp = DateFormat("yyyy-MM-dd HH:mm:ss");
  List<Likert> questoes = <Likert>[];
}