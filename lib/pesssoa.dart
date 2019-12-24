import 'package:intl/intl.dart';

class Pessoa{

  String nome = "";
  DateFormat _dateFormat = DateFormat("dd-MM-yyyy");
  DateTime dataNascimento;

  DateFormat get dateFormat => _dateFormat;

  Pessoa() {
    dataNascimento = _dateFormat.parse("01-01-1975");
  }

  String dataNascimentoText() {
    return _dateFormat.format(dataNascimento);
  }

}