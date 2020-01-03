import 'package:dataquest/questionario.dart';

import 'package:flutter/material.dart';
import 'content.dart';
import 'utils.dart';

class EixoScreen extends StatefulWidget {
  final int index;
  const EixoScreen(this.index);
  @override
  _EixoState createState() => new _EixoState();
}

class _EixoState extends State<EixoScreen>
    with AutomaticKeepAliveClientMixin<EixoScreen> {
  @override
  
  Questionario data = new Questionario();
  
  var _currencies = [
    'Masculino',
    'Feminino',
    'Transgênero',
    'Cisgênero',
    'Transexual',
    'Travesti'
  ];
  String _currentItemSelected = 'Masculino';


  List<String> _formacao = [
    'Fundamental incompleto',
    'Fundamental completo',
    'Médio incompleto',
    'Médio completo',
    'Superior incompleto',
    'Superior completo',
    'Pós-graduação imcompleta',
    'Pós-graduação'
  ];
  String _selectedFormacao="Fundamental incompleto";

  String _dataNascimentoText ="01-01-1980";
  

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
    data.pessoa.genero = newValueSelected;
    print(data.pessoa.genero);
  }

  void _onDropDownFormacaoSelected(String newValueSelected) {
    setState(() {
      this._selectedFormacao = newValueSelected;
    });
    data.pessoa.formacao = newValueSelected;
    print(data.pessoa.formacao);
  }

  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: Center(
            child: ListView(children: <Widget>[
      // EIXO NOME
      Container(
        color: Colors.blue,
        height: 75,
        child: Center(
          child: new Text(
            data.eixo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),

      // ENTRADA NOME
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'NOME DO INFORMANTE:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      //icon: Icon(Icons.people),
                      //prefixText: "Nome: ",
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      data.pessoa.nome = value;
                      print(data.pessoa.nome);
                    });
                  }
                  //controller: controller,
                  ),
              //Text(controller.text)
            ],
          ),
        ),
      ),
      //ENTRADA IDADE
      Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          RaisedButton(
            child: Text('Escolha Data de Nascimento'),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: data.pessoa.dataNascimento == null
                          ? DateTime.now()
                          : data.pessoa.dataNascimento,
                      firstDate: DateTime(1925),
                      lastDate: DateTime(2019),
                      locale: Locale("pt"))
                  .then((date) {
                setState(() {
                  data.pessoa.dataNascimento = date;
                  _dataNascimentoText =
                      data.pessoa.dataNascimentoText();
                });
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
          ),
          Text(
            'Data de Nascimento: ${_dataNascimentoText}',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 15),
          ),
        ],
      )),

      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'GÊNERO:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              DropdownButton<String>(
                items: _currencies.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from drop down
                  _onDropDownItemSelected(newValueSelected);
                },
                value: _currentItemSelected,
              ),
              //Text(controller.text)
            ],
          ),
        ),
      ),

      // ENTRADA ATIVIDADE LABORAL
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'ATIVIDADE LABORAL:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      //icon: Icon(Icons.people),
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      data.pessoa.trabalho = value;
                      print(data.pessoa.trabalho);
                    });
                  }
                  //controller: controller,
                  ),
              //Text(controller.text)
            ],
          ),
        ),
      ),

      // ENTRADA FORMAÇÃO
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'FORMAÇÃO:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              DropdownButton<String>(
                items: _formacao.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from drop down
                  _onDropDownFormacaoSelected(newValueSelected);
                },
                value: _selectedFormacao,
              ),
            ],
          ),
        ),
      ),

      // ENTRADA LOCAlIDADE
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'LOCALIDADE:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      //icon: Icon(Icons.people),
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      data.pessoa.localidade = value;
                      print(data.pessoa.localidade);
                    });
                  }
                  //controller: controller,
                  ),
              //Text(controller.text)
            ],
          ),
        ),
      ),
      //INFORMATIVO SOBRE ESCALA
      Container(
        color: Colors.white,
        height: 75,
        margin: EdgeInsets.all(2.0),
        padding: EdgeInsets.all(6),
        child: Center(
          child: new Text(
            "Marque as questões/indicadores considerando a escala no qual 0 é nunca e 4 é sempre",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ),
      // TEMA DA PERGUNTA - T1
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              data.tema[0].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //T1 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.1) ${data.tema[0].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.2) ${data.tema[0].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.3) ${data.tema[0].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.4) ${data.tema[0].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.5) ${data.tema[0].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.6) ${data.tema[0].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.7) ${data.tema[0].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.8) ${data.tema[0].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.9) ${data.tema[0].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //T1 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.10) ${data.tema[0].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[0].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TEMA DA PERGUNTA - T2
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              data.tema[1].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //t2 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.1) ${data.tema[1].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.2) ${data.tema[1].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.3) ${data.tema[1].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.4) ${data.tema[1].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.5) ${data.tema[1].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.6) ${data.tema[1].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.7) ${data.tema[1].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.8) ${data.tema[1].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.9) ${data.tema[1].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t2 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.purple[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '2.10) ${data.tema[1].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[1].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TEMA DA PERGUNTA - t3
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange,
          ),
          child: Center(
            child: Text(
              data.tema[2].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //t3 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.1) ${data.tema[2].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.2) ${data.tema[2].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.3) ${data.tema[2].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.4) ${data.tema[2].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.5) ${data.tema[2].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.6) ${data.tema[2].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.7) ${data.tema[2].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.8) ${data.tema[2].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.9) ${data.tema[2].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t3 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.orange[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '3.10) ${data.tema[2].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[2].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TEMA DA PERGUNTA - t4
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink,
          ),
          child: Center(
            child: Text(
              data.tema[3].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //t4 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.1) ${data.tema[3].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.2) ${data.tema[3].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.3) ${data.tema[3].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.4) ${data.tema[3].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.5) ${data.tema[3].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.6) ${data.tema[3].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.7) ${data.tema[3].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.8) ${data.tema[3].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.9) ${data.tema[3].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t4 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.pink[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '4.10) ${data.tema[3].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[3].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TEMA DA PERGUNTA - t5
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          child: Center(
            child: Text(
              data.tema[4].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //t5 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.1) ${data.tema[4].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.2) ${data.tema[4].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.3) ${data.tema[4].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.4) ${data.tema[4].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.5) ${data.tema[4].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.6) ${data.tema[4].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.7) ${data.tema[4].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.8) ${data.tema[4].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.9) ${data.tema[4].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t5 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.teal[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '5.10) ${data.tema[4].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[4].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TEMA DA PERGUNTA - t6
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          child: Center(
            child: Text(
              data.tema[5].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      //
      //t6 - PERGUNTA1
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.1) ${data.tema[5].questao[0]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[0].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA2
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.2) ${data.tema[5].questao[1]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[1].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA3
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.3) ${data.tema[5].questao[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[2].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 4
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.4) ${data.tema[5].questao[3]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[3].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 5
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.5) ${data.tema[5].questao[4]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[4].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 6
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.6) ${data.tema[5].questao[5]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[5].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 7
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.7) ${data.tema[5].questao[6]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[6].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 8
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.8) ${data.tema[5].questao[7]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[7].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 9
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.9) ${data.tema[5].questao[8]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[8].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //t6 - PERGUNTA 10
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '6.10) ${data.tema[5].questao[9]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: data.tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: data.tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: data.tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: data.tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: data.tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        data.tema[5].questao[9].resposta = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //obs
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'OBSERVAÇÕES:',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      //icon: Icon(Icons.people),
                      //prefixText: "Nome: ",
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      data.pessoa.observacoes = value;
                      print(data.pessoa.observacoes);
                    });
                  }
                  //controller: controller,
                  ),
              //Text(controller.text)
            ],
          ),
        ),
      ),

      /// divisor
      ///
      ///
      Container(
        child: Center(
          child: RaisedButton.icon(
            onPressed: () {
              print("running");
              Questionario eixo = data;
              eixo.end();
              String csv = Questionario.toCsv(eixo, ";");
              Utils.write(csv,
                      "eixo1_${eixo.pessoa.nome.replaceAll(" ", "_")}_${eixo.pessoa.dataNascimentoText()}_;.csv")
                  .then(Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Questionário salvo!!"),
                  )))
                  .catchError(Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("erro ao salvar questionário!!!!!!"),
                    backgroundColor: Color.fromRGBO(200, 0, 0, 1),
                  )));
            },
            icon: Icon(Icons.save),
            label: Text('Salvar Formulário Eixo 1'),
            color: Colors.amber,
          ),
        ),
      ),
    ])));
  }

  bool get wantKeepAlive => true;
}
