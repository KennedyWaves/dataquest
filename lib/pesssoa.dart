import 'package:intl/intl.dart';

class Pessoa {
  String nome = "";
  String trabalho = "";
  String formacao = "";
  String localidade = "";
  String genero = "";
  DateFormat _dateFormat = DateFormat("dd/MM/yyyy");
  DateTime dataNascimento;

  DateFormat get dateFormat => _dateFormat;

  Pessoa() {
    dataNascimento = _dateFormat.parse("01/01/1990");
  }

  String dataNascimentoText() {
    return _dateFormat.format(dataNascimento);
  }
}
