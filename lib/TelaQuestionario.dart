import 'package:dataquest/questionario.dart';
import 'package:flutter/material.dart';
import 'content.dart';
import 'utils.dart';

@override
class TelaDeQuestionario extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}

/// FIM EIXOS
///
///
//variáveis de uso da interface
List<String> _dataNascimentoText = <String>[
  '01-01-1975',
  '01-01-1975',
  '01-01-1975'
];
List<TextEditingController> birthdayController = <TextEditingController>[
  new TextEditingController(),
  new TextEditingController(),
  new TextEditingController()
];

Content content = new Content();

///
//TAB BAR VIEW
class QuestionState extends State<TelaDeQuestionario> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulário'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Eixo 1',
              ),
              Tab(
                text: 'Eixo 2',
              ),
              Tab(
                text: 'Eixo 3',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Eixo1(),
            Eixo2(),
            Eixo3(),
          ],
        ),
      ),
    );
  }
}

//EIXO 1 CONVERTER TO STATEFULWIDGET
class Eixo1 extends StatefulWidget {
  @override
  _Eixo1State createState() => new _Eixo1State();
}

//EIXO 1
class _Eixo1State extends State<Eixo1>
    with AutomaticKeepAliveClientMixin<Eixo1> {
  @override
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
            content.eixo[0].eixo,
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
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      icon: Icon(Icons.people),
                      prefixText: "Nome: ",
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      content.eixo[0].pessoa.nome = value;
                      print(content.eixo[0].pessoa.nome);
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
          Text(
            'Data de Nascimento: ${_dataNascimentoText[0]}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          RaisedButton(
            child: Text('Escolha Data de Nascimento'),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: content.eixo[0].pessoa.dataNascimento == null
                          ? DateTime.now()
                          : content.eixo[0].pessoa.dataNascimento,
                      firstDate: DateTime(1925),
                      lastDate: DateTime(2019))
                  .then((date) {
                setState(() {
                  content.eixo[0].pessoa.dataNascimento = date;
                  _dataNascimentoText[0] =
                      content.eixo[0].pessoa.dataNascimentoText();
                });
              });
            },
          )
        ],
      )),

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
              content.eixo[0].tema[0].tema,
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
                '1.1) ${content.eixo[0].tema[0].questao[0]}',
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
                    groupValue: content.eixo[0].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[0].resposta = T;
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
                '1.2) ${content.eixo[0].tema[0].questao[1]}',
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
                    groupValue: content.eixo[0].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[1].resposta = T;
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
                '1.3) ${content.eixo[0].tema[0].questao[2]}',
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
                    groupValue: content.eixo[0].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[2].resposta = T;
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
                '1.4) ${content.eixo[0].tema[0].questao[3]}',
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
                    groupValue: content.eixo[0].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[3].resposta = T;
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
                '1.5) ${content.eixo[0].tema[0].questao[4]}',
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
                    groupValue: content.eixo[0].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[4].resposta = T;
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
                '1.6) ${content.eixo[0].tema[0].questao[5]}',
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
                    groupValue: content.eixo[0].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[5].resposta = T;
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
                '1.7) ${content.eixo[0].tema[0].questao[6]}',
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
                    groupValue: content.eixo[0].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[6].resposta = T;
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
                '1.8) ${content.eixo[0].tema[0].questao[7]}',
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
                    groupValue: content.eixo[0].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[7].resposta = T;
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
                '1.9) ${content.eixo[0].tema[0].questao[8]}',
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
                    groupValue: content.eixo[0].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[8].resposta = T;
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
                '1.10) ${content.eixo[0].tema[0].questao[9]}',
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
                    groupValue: content.eixo[0].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[0].questao[9].resposta = T;
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
              content.eixo[0].tema[1].tema,
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
                '2.1) ${content.eixo[0].tema[1].questao[0]}',
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
                    groupValue: content.eixo[0].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[0].resposta = T;
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
                '2.2) ${content.eixo[0].tema[1].questao[1]}',
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
                    groupValue: content.eixo[0].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[1].resposta = T;
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
                '2.3) ${content.eixo[0].tema[1].questao[2]}',
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
                    groupValue: content.eixo[0].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[2].resposta = T;
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
                '2.4) ${content.eixo[0].tema[1].questao[3]}',
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
                    groupValue: content.eixo[0].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[3].resposta = T;
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
                '2.5) ${content.eixo[0].tema[1].questao[4]}',
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
                    groupValue: content.eixo[0].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[4].resposta = T;
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
                '2.6) ${content.eixo[0].tema[1].questao[5]}',
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
                    groupValue: content.eixo[0].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[5].resposta = T;
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
                '2.7) ${content.eixo[0].tema[1].questao[6]}',
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
                    groupValue: content.eixo[0].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[6].resposta = T;
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
                '2.8) ${content.eixo[0].tema[1].questao[7]}',
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
                    groupValue: content.eixo[0].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[7].resposta = T;
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
                '2.9) ${content.eixo[0].tema[1].questao[8]}',
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
                    groupValue: content.eixo[0].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[8].resposta = T;
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
                '2.10) ${content.eixo[0].tema[1].questao[9]}',
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
                    groupValue: content.eixo[0].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[1].questao[9].resposta = T;
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
              content.eixo[0].tema[2].tema,
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
                '3.1) ${content.eixo[0].tema[2].questao[0]}',
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
                    groupValue: content.eixo[0].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[0].resposta = T;
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
                '3.2) ${content.eixo[0].tema[2].questao[1]}',
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
                    groupValue: content.eixo[0].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[1].resposta = T;
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
                '3.3) ${content.eixo[0].tema[2].questao[2]}',
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
                    groupValue: content.eixo[0].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[2].resposta = T;
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
                '3.4) ${content.eixo[0].tema[2].questao[3]}',
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
                    groupValue: content.eixo[0].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[3].resposta = T;
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
                '3.5) ${content.eixo[0].tema[2].questao[4]}',
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
                    groupValue: content.eixo[0].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[4].resposta = T;
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
                '3.6) ${content.eixo[0].tema[2].questao[5]}',
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
                    groupValue: content.eixo[0].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[5].resposta = T;
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
                '3.7) ${content.eixo[0].tema[2].questao[6]}',
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
                    groupValue: content.eixo[0].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[6].resposta = T;
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
                '3.8) ${content.eixo[0].tema[2].questao[7]}',
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
                    groupValue: content.eixo[0].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[7].resposta = T;
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
                '3.9) ${content.eixo[0].tema[2].questao[8]}',
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
                    groupValue: content.eixo[0].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[8].resposta = T;
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
                '3.10) ${content.eixo[0].tema[2].questao[9]}',
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
                    groupValue: content.eixo[0].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[2].questao[9].resposta = T;
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
              content.eixo[0].tema[3].tema,
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
                '4.1) ${content.eixo[0].tema[3].questao[0]}',
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
                    groupValue: content.eixo[0].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[0].resposta = T;
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
                '4.2) ${content.eixo[0].tema[3].questao[1]}',
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
                    groupValue: content.eixo[0].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[1].resposta = T;
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
                '4.3) ${content.eixo[0].tema[3].questao[2]}',
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
                    groupValue: content.eixo[0].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[2].resposta = T;
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
                '4.4) ${content.eixo[0].tema[3].questao[3]}',
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
                    groupValue: content.eixo[0].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[3].resposta = T;
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
                '4.5) ${content.eixo[0].tema[3].questao[4]}',
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
                    groupValue: content.eixo[0].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[4].resposta = T;
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
                '4.6) ${content.eixo[0].tema[3].questao[5]}',
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
                    groupValue: content.eixo[0].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[5].resposta = T;
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
                '4.7) ${content.eixo[0].tema[3].questao[6]}',
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
                    groupValue: content.eixo[0].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[6].resposta = T;
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
                '4.8) ${content.eixo[0].tema[3].questao[7]}',
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
                    groupValue: content.eixo[0].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[7].resposta = T;
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
                '4.9) ${content.eixo[0].tema[3].questao[8]}',
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
                    groupValue: content.eixo[0].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[8].resposta = T;
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
                '4.10) ${content.eixo[0].tema[3].questao[9]}',
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
                    groupValue: content.eixo[0].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[3].questao[9].resposta = T;
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
              content.eixo[0].tema[4].tema,
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
                '5.1) ${content.eixo[0].tema[4].questao[0]}',
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
                    groupValue: content.eixo[0].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[0].resposta = T;
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
                '5.2) ${content.eixo[0].tema[4].questao[1]}',
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
                    groupValue: content.eixo[0].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[1].resposta = T;
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
                '5.3) ${content.eixo[0].tema[4].questao[2]}',
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
                    groupValue: content.eixo[0].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[2].resposta = T;
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
                '5.4) ${content.eixo[0].tema[4].questao[3]}',
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
                    groupValue: content.eixo[0].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[3].resposta = T;
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
                '5.5) ${content.eixo[0].tema[4].questao[4]}',
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
                    groupValue: content.eixo[0].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[4].resposta = T;
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
                '5.6) ${content.eixo[0].tema[4].questao[5]}',
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
                    groupValue: content.eixo[0].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[5].resposta = T;
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
                '5.7) ${content.eixo[0].tema[4].questao[6]}',
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
                    groupValue: content.eixo[0].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[6].resposta = T;
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
                '5.8) ${content.eixo[0].tema[4].questao[7]}',
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
                    groupValue: content.eixo[0].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[7].resposta = T;
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
                '5.9) ${content.eixo[0].tema[4].questao[8]}',
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
                    groupValue: content.eixo[0].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[8].resposta = T;
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
                '5.10) ${content.eixo[0].tema[4].questao[9]}',
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
                    groupValue: content.eixo[0].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[4].questao[9].resposta = T;
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
              content.eixo[0].tema[5].tema,
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
                '6.1) ${content.eixo[0].tema[5].questao[0]}',
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
                    groupValue: content.eixo[0].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[0].resposta = T;
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
                '6.2) ${content.eixo[0].tema[5].questao[1]}',
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
                    groupValue: content.eixo[0].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[1].resposta = T;
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
                '6.3) ${content.eixo[0].tema[5].questao[2]}',
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
                    groupValue: content.eixo[0].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[2].resposta = T;
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
                '6.4) ${content.eixo[0].tema[5].questao[3]}',
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
                    groupValue: content.eixo[0].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[3].resposta = T;
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
                '6.5) ${content.eixo[0].tema[5].questao[4]}',
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
                    groupValue: content.eixo[0].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[4].resposta = T;
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
                '6.6) ${content.eixo[0].tema[5].questao[5]}',
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
                    groupValue: content.eixo[0].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[5].resposta = T;
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
                '6.7) ${content.eixo[0].tema[5].questao[6]}',
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
                    groupValue: content.eixo[0].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[6].resposta = T;
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
                '6.8) ${content.eixo[0].tema[5].questao[7]}',
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
                    groupValue: content.eixo[0].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[7].resposta = T;
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
                '6.9) ${content.eixo[0].tema[5].questao[8]}',
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
                    groupValue: content.eixo[0].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[8].resposta = T;
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
                '6.10) ${content.eixo[0].tema[5].questao[9]}',
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
                    groupValue: content.eixo[0].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[0].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[0].tema[5].questao[9].resposta = T;
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

      /// divisor
      ///
      ///
      Container(
        child: Center(
          child: RaisedButton.icon(
            onPressed: () {
              print("running");
              Questionario eixo = content.eixo[0];
              eixo.end();
              String csv = Utils.questToCsv(eixo, ";");
              Utils.write(csv,
                      "_eixo1_${eixo.pessoa.nome.replaceAll(" ", "_")}_${eixo.pessoa.dataNascimentoText()}_;.csv")
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

//EIXO 2 CONVERTER TO STATEFULWIDGET
class Eixo2 extends StatefulWidget {
  @override
  _Eixo2State createState() => _Eixo2State();
}

//EIXO 2
class _Eixo2State extends State<Eixo2>
    with AutomaticKeepAliveClientMixin<Eixo2> {
  @override
  Widget build(BuildContext context) {
    //EIXO2
    //content.eixo[1].pessoa.nome = content.eixo[0].pessoa.nome;
    //content.eixo[1].pessoa.dataNascimento = content.eixo[0].pessoa.dataNascimento;

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
            "EIXO: RAZÕES HUMANAS",
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
              TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      icon: Icon(Icons.people),
                      prefixText: "Nome: ",
                      border: OutlineInputBorder()),
                  onChanged: (String value) {
                    setState(() {
                      content.eixo[1].pessoa.nome = '$value';
                      print(content.eixo[1].pessoa.nome);
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
          Text(
            'Data de Nascimento: ${_dataNascimentoText[1]}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          RaisedButton(
            child: Text('Escolha Data de Nascimento'),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: content.eixo[1].pessoa.dataNascimento == null
                          ? DateTime.now()
                          : content.eixo[1].pessoa.dataNascimento,
                      firstDate: DateTime(1925),
                      lastDate: DateTime(2019))
                  .then((date) {
                setState(() {
                  content.eixo[1].pessoa.dataNascimento = date;
                  _dataNascimentoText[1] =
                      content.eixo[1].pessoa.dataNascimentoText();
                });
              });
            },
          )
        ],
      )),

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
              content.eixo[1].tema[0].tema,
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
                '1.1) ${content.eixo[1].tema[0].questao[0]}',
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
                    groupValue: content.eixo[1].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[0].resposta = T;
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
                '1.2) ${content.eixo[1].tema[0].questao[1]}',
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
                    groupValue: content.eixo[1].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[1].resposta = T;
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
                '1.3) ${content.eixo[1].tema[0].questao[2]}',
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
                    groupValue: content.eixo[1].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[2].resposta = T;
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
                '1.4) ${content.eixo[1].tema[0].questao[3]}',
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
                    groupValue: content.eixo[1].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[3].resposta = T;
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
                '1.5) ${content.eixo[1].tema[0].questao[4]}',
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
                    groupValue: content.eixo[1].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[4].resposta = T;
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
                '1.6) ${content.eixo[1].tema[0].questao[5]}',
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
                    groupValue: content.eixo[1].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[5].resposta = T;
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
                '1.7) ${content.eixo[1].tema[0].questao[6]}',
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
                    groupValue: content.eixo[1].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[6].resposta = T;
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
                '1.8) ${content.eixo[1].tema[0].questao[7]}',
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
                    groupValue: content.eixo[1].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[7].resposta = T;
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
                '1.9) ${content.eixo[1].tema[0].questao[8]}',
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
                    groupValue: content.eixo[1].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[8].resposta = T;
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
                '1.10) ${content.eixo[1].tema[0].questao[9]}',
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
                    groupValue: content.eixo[1].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[0].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[0].questao[9].resposta = T;
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
              content.eixo[1].tema[1].tema,
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
                '2.1) ${content.eixo[1].tema[1].questao[0]}',
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
                    groupValue: content.eixo[1].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[0].resposta = T;
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
                '2.2) ${content.eixo[1].tema[1].questao[1]}',
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
                    groupValue: content.eixo[1].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[1].resposta = T;
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
                '2.3) ${content.eixo[1].tema[1].questao[2]}',
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
                    groupValue: content.eixo[1].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[2].resposta = T;
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
                '2.4) ${content.eixo[1].tema[1].questao[3]}',
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
                    groupValue: content.eixo[1].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[3].resposta = T;
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
                '2.5) ${content.eixo[1].tema[1].questao[4]}',
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
                    groupValue: content.eixo[1].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[4].resposta = T;
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
                '2.6) ${content.eixo[1].tema[1].questao[5]}',
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
                    groupValue: content.eixo[1].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[5].resposta = T;
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
                '2.7) ${content.eixo[1].tema[1].questao[6]}',
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
                    groupValue: content.eixo[1].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[6].resposta = T;
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
                '2.8) ${content.eixo[1].tema[1].questao[7]}',
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
                    groupValue: content.eixo[1].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[7].resposta = T;
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
                '2.9) ${content.eixo[1].tema[1].questao[8]}',
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
                    groupValue: content.eixo[1].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[8].resposta = T;
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
                '2.10) ${content.eixo[1].tema[1].questao[9]}',
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
                    groupValue: content.eixo[1].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[1].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[1].questao[9].resposta = T;
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
              content.eixo[1].tema[2].tema,
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
                '3.1) ${content.eixo[1].tema[2].questao[0]}',
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
                    groupValue: content.eixo[1].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[0].resposta = T;
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
                '3.2) ${content.eixo[1].tema[2].questao[1]}',
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
                    groupValue: content.eixo[1].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[1].resposta = T;
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
                '3.3) ${content.eixo[1].tema[2].questao[2]}',
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
                    groupValue: content.eixo[1].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[2].resposta = T;
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
                '3.4) ${content.eixo[1].tema[2].questao[3]}',
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
                    groupValue: content.eixo[1].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[3].resposta = T;
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
                '3.5) ${content.eixo[1].tema[2].questao[4]}',
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
                    groupValue: content.eixo[1].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[4].resposta = T;
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
                '3.6) ${content.eixo[1].tema[2].questao[5]}',
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
                    groupValue: content.eixo[1].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[5].resposta = T;
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
                '3.7) ${content.eixo[1].tema[2].questao[6]}',
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
                    groupValue: content.eixo[1].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[6].resposta = T;
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
                '3.8) ${content.eixo[1].tema[2].questao[7]}',
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
                    groupValue: content.eixo[1].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[7].resposta = T;
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
                '3.9) ${content.eixo[1].tema[2].questao[8]}',
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
                    groupValue: content.eixo[1].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[8].resposta = T;
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
                '3.10) ${content.eixo[1].tema[2].questao[9]}',
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
                    groupValue: content.eixo[1].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[2].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[2].questao[9].resposta = T;
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
              content.eixo[1].tema[3].tema,
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
                '4.1) ${content.eixo[1].tema[3].questao[0]}',
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
                    groupValue: content.eixo[1].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[0].resposta = T;
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
                '4.2) ${content.eixo[1].tema[3].questao[1]}',
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
                    groupValue: content.eixo[1].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[1].resposta = T;
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
                '${content.eixo[1].tema[3].questao[2]}',
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
                    groupValue: content.eixo[1].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[2].resposta = T;
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
                '4.4) ${content.eixo[1].tema[3].questao[3]}',
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
                    groupValue: content.eixo[1].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[3].resposta = T;
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
                '4.5) ${content.eixo[1].tema[3].questao[4]}',
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
                    groupValue: content.eixo[1].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[4].resposta = T;
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
                '4.6) ${content.eixo[1].tema[3].questao[5]}',
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
                    groupValue: content.eixo[1].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[5].resposta = T;
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
                '4.7) ${content.eixo[1].tema[3].questao[6]}',
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
                    groupValue: content.eixo[1].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[6].resposta = T;
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
                '4.8) ${content.eixo[1].tema[3].questao[7]}',
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
                    groupValue: content.eixo[1].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[7].resposta = T;
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
                '4.9) ${content.eixo[1].tema[3].questao[8]}',
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
                    groupValue: content.eixo[1].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[8].resposta = T;
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
                '4.10) ${content.eixo[1].tema[3].questao[9]}',
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
                    groupValue: content.eixo[1].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[3].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[3].questao[9].resposta = T;
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
              content.eixo[1].tema[4].tema,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
                '5.1) ${content.eixo[1].tema[4].questao[0]}',
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
                    groupValue: content.eixo[1].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[0].resposta = T;
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
                '5.2) ${content.eixo[1].tema[4].questao[1]}',
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
                    groupValue: content.eixo[1].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[1].resposta = T;
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
                '5.3) ${content.eixo[1].tema[4].questao[2]}',
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
                    groupValue: content.eixo[1].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[2].resposta = T;
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
                '5.4) ${content.eixo[1].tema[4].questao[3]}',
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
                    groupValue: content.eixo[1].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[3].resposta = T;
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
                '5.5) ${content.eixo[1].tema[4].questao[4]}',
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
                    groupValue: content.eixo[1].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[4].resposta = T;
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
                '5.6) ${content.eixo[1].tema[4].questao[5]}',
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
                    groupValue: content.eixo[1].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[5].resposta = T;
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
                '5.7) ${content.eixo[1].tema[4].questao[6]}',
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
                    groupValue: content.eixo[1].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[6].resposta = T;
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
                '5.8) ${content.eixo[1].tema[4].questao[7]}',
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
                    groupValue: content.eixo[1].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[7].resposta = T;
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
                '5.9) ${content.eixo[1].tema[4].questao[8]}',
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
                    groupValue: content.eixo[1].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[8].resposta = T;
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
                '5.10) ${content.eixo[1].tema[4].questao[9]}',
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
                    groupValue: content.eixo[1].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[4].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[4].questao[9].resposta = T;
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
              content.eixo[1].tema[5].tema,
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
                '6.1) ${content.eixo[1].tema[5].questao[0]}',
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
                    groupValue: content.eixo[1].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[0].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[0].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[0].resposta = T;
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
                '6.2) ${content.eixo[1].tema[5].questao[1]}',
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
                    groupValue: content.eixo[1].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[1].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[1].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[1].resposta = T;
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
                '6.3) ${content.eixo[1].tema[5].questao[2]}',
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
                    groupValue: content.eixo[1].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[2].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[2].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[2].resposta = T;
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
                '6.4) ${content.eixo[1].tema[5].questao[3]}',
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
                    groupValue: content.eixo[1].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[3].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[3].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[3].resposta = T;
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
                '6.5) ${content.eixo[1].tema[5].questao[4]}',
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
                    groupValue: content.eixo[1].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[4].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[4].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[4].resposta = T;
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
                '6.6) ${content.eixo[1].tema[5].questao[5]}',
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
                    groupValue: content.eixo[1].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[5].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[5].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[5].resposta = T;
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
                '6.7) ${content.eixo[1].tema[5].questao[6]}',
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
                    groupValue: content.eixo[1].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[6].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[6].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[6].resposta = T;
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
                '6.8) ${content.eixo[1].tema[5].questao[7]}',
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
                    groupValue: content.eixo[1].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[7].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[7].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[7].resposta = T;
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
                '6.9) ${content.eixo[1].tema[5].questao[8]}',
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
                    groupValue: content.eixo[1].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[8].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[8].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[8].resposta = T;
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
                '6.10) ${content.eixo[1].tema[5].questao[9]}',
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
                    groupValue: content.eixo[1].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[9].resposta = T;
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
                    groupValue: content.eixo[1].tema[5].questao[9].resposta,
                    onChanged: (T) {
                      setState(() {
                        content.eixo[1].tema[5].questao[9].resposta = T;
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

      /// divisor
      ///
      Container(
        child: Center(
          child: RaisedButton.icon(
            onPressed: () {
              Questionario eixo = content.eixo[1];
              eixo.end();
              String csv = Utils.questToCsv(eixo, ";");
              Utils.write(csv,
                      "eixo2_${eixo.pessoa.nome.replaceAll(" ", "_")}_${eixo.pessoa.dataNascimentoText()}_;.csv")
                  .then(Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Questionário salvo!"),
                  )))
                  .catchError(Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("ERRO AO SALVAR QUESTIONÁRIO!"),
                    backgroundColor: Color.fromRGBO(200, 0, 0, 1),
                  )));
            },
            icon: Icon(Icons.save),
            label: Text('Salvar Formulário do Eixo 2'),
            color: Colors.amber,
          ),
        ),
      ),
    ])));
  }

  bool get wantKeepAlive => true;
}

//EIXO 3 CONVERTER TO STATEFULWIDGET
class Eixo3 extends StatefulWidget {
  @override
  _Eixo3State createState() => _Eixo3State();
}

//EIXO 3
class _Eixo3State extends State<Eixo3>
    with AutomaticKeepAliveClientMixin<Eixo3> {
  @override
  Widget build(BuildContext context) {
    //EIXO3
    //content.eixo[2].pessoa.nome = content.eixo[0].pessoa.nome;
    // content.eixo[2].pessoa.dataNascimento = content.eixo[0].pessoa.dataNascimento;

    super.build(context);
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          // EIXO NOME
          Container(
            color: Colors.blue,
            height: 75,
            child: Center(
              child: new Text(
                "EIXO: CONSEQUENCIAS AMBIENTAIS",
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
                  TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.green[50],
                          filled: true,
                          icon: Icon(Icons.people),
                          prefixText: "Nome: ",
                          border: OutlineInputBorder()),
                      onChanged: (String value) {
                        setState(() {
                          content.eixo[2].pessoa.nome = '$value';
                          print(content.eixo[2].pessoa.nome);
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
              Text(
                'Data de Nascimento: ${_dataNascimentoText[2]}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              RaisedButton(
                child: Text('Escolha Data de Nascimento'),
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate:
                              content.eixo[2].pessoa.dataNascimento == null
                                  ? DateTime.now()
                                  : content.eixo[2].pessoa.dataNascimento,
                          firstDate: DateTime(1925),
                          lastDate: DateTime(2019))
                      .then((date) {
                    setState(() {
                      content.eixo[2].pessoa.dataNascimento = date;
                      _dataNascimentoText[2] =
                          content.eixo[2].pessoa.dataNascimentoText();
                    });
                  });
                },
              )
            ],
          )),

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
                  content.eixo[2].tema[0].tema,
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
                    '1.1) ${content.eixo[2].tema[0].questao[0]}',
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
                        groupValue: content.eixo[2].tema[0].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[0].resposta = T;
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
                    '1.2) ${content.eixo[2].tema[0].questao[1]}',
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
                        groupValue: content.eixo[2].tema[0].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[1].resposta = T;
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
                    '1.3) ${content.eixo[2].tema[0].questao[2]}',
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
                        groupValue: content.eixo[2].tema[0].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[2].resposta = T;
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
                    '1.4) ${content.eixo[2].tema[0].questao[3]}',
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
                        groupValue: content.eixo[2].tema[0].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[3].resposta = T;
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
                    '1.5) ${content.eixo[2].tema[0].questao[4]}',
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
                        groupValue: content.eixo[2].tema[0].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[4].resposta = T;
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
                    '1.6) ${content.eixo[2].tema[0].questao[5]}',
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
                        groupValue: content.eixo[2].tema[0].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[5].resposta = T;
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
                    '1.7) ${content.eixo[2].tema[0].questao[6]}',
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
                        groupValue: content.eixo[2].tema[0].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[6].resposta = T;
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
                    '1.8) ${content.eixo[2].tema[0].questao[7]}',
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
                        groupValue: content.eixo[2].tema[0].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[7].resposta = T;
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
                    '1.9) ${content.eixo[2].tema[0].questao[8]}',
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
                        groupValue: content.eixo[2].tema[0].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[8].resposta = T;
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
                    '1.10) ${content.eixo[2].tema[0].questao[9]}',
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
                        groupValue: content.eixo[2].tema[0].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[0].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[0].questao[9].resposta = T;
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
                  content.eixo[2].tema[1].tema,
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
                    '2.1) ${content.eixo[2].tema[1].questao[0]}',
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
                        groupValue: content.eixo[2].tema[1].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[0].resposta = T;
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
                    '2.2) ) ${content.eixo[2].tema[1].questao[1]}',
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
                        groupValue: content.eixo[2].tema[1].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[1].resposta = T;
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
                    '2.3) ${content.eixo[2].tema[1].questao[2]}',
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
                        groupValue: content.eixo[2].tema[1].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[2].resposta = T;
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
                    '2.4) ${content.eixo[2].tema[1].questao[3]}',
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
                        groupValue: content.eixo[2].tema[1].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[3].resposta = T;
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
                    '2.5) ${content.eixo[2].tema[1].questao[4]}',
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
                        groupValue: content.eixo[2].tema[1].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[4].resposta = T;
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
                    '2.6) ${content.eixo[2].tema[1].questao[5]}',
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
                        groupValue: content.eixo[2].tema[1].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[5].resposta = T;
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
                    '2.7) ${content.eixo[2].tema[1].questao[6]}',
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
                        groupValue: content.eixo[2].tema[1].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[6].resposta = T;
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
                    '2.8) ${content.eixo[2].tema[1].questao[7]}',
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
                        groupValue: content.eixo[2].tema[1].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[7].resposta = T;
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
                    '2.9) ${content.eixo[2].tema[1].questao[8]}',
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
                        groupValue: content.eixo[2].tema[1].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[8].resposta = T;
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
                    '2.10) ${content.eixo[2].tema[1].questao[9]}',
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
                        groupValue: content.eixo[2].tema[1].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[1].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[1].questao[9].resposta = T;
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
                  content.eixo[2].tema[2].tema,
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
                    '3.1) ${content.eixo[2].tema[2].questao[0]}',
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
                        groupValue: content.eixo[2].tema[2].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[0].resposta = T;
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
                    '3.2) ${content.eixo[2].tema[2].questao[1]}',
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
                        groupValue: content.eixo[2].tema[2].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[1].resposta = T;
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
                    '3.3) ${content.eixo[2].tema[2].questao[2]}',
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
                        groupValue: content.eixo[2].tema[2].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[2].resposta = T;
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
                    '3.4) ${content.eixo[2].tema[2].questao[3]}',
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
                        groupValue: content.eixo[2].tema[2].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[3].resposta = T;
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
                    '3.5) ${content.eixo[2].tema[2].questao[4]}',
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
                        groupValue: content.eixo[2].tema[2].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[4].resposta = T;
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
                    '3.6) ${content.eixo[2].tema[2].questao[5]}',
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
                        groupValue: content.eixo[2].tema[2].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[5].resposta = T;
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
                    '3.7) ${content.eixo[2].tema[2].questao[6]}',
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
                        groupValue: content.eixo[2].tema[2].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[6].resposta = T;
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
                    '3.8) ${content.eixo[2].tema[2].questao[7]}',
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
                        groupValue: content.eixo[2].tema[2].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[7].resposta = T;
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
                    '3.9) ${content.eixo[2].tema[2].questao[8]}',
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
                        groupValue: content.eixo[2].tema[2].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[8].resposta = T;
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
                    '3.10) ${content.eixo[2].tema[2].questao[9]}',
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
                        groupValue: content.eixo[2].tema[2].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[2].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[2].questao[9].resposta = T;
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
                  content.eixo[2].tema[3].tema,
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
                    '4.1) ${content.eixo[2].tema[3].questao[0]}',
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
                        groupValue: content.eixo[2].tema[3].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[0].resposta = T;
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
                    '4.2) ${content.eixo[2].tema[3].questao[1]}',
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
                        groupValue: content.eixo[2].tema[3].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[1].resposta = T;
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
                    '4.3) ${content.eixo[2].tema[3].questao[2]}',
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
                        groupValue: content.eixo[2].tema[3].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[2].resposta = T;
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
                    '4.4) ${content.eixo[2].tema[3].questao[3]}',
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
                        groupValue: content.eixo[2].tema[3].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[3].resposta = T;
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
                    '4.5) ${content.eixo[2].tema[3].questao[4]}',
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
                        groupValue: content.eixo[2].tema[3].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[4].resposta = T;
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
                    '4.6) ${content.eixo[2].tema[3].questao[5]}',
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
                        groupValue: content.eixo[2].tema[3].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[5].resposta = T;
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
                    '4.7) ${content.eixo[2].tema[3].questao[6]}',
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
                        groupValue: content.eixo[2].tema[3].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[6].resposta = T;
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
                    '4.8) ${content.eixo[2].tema[3].questao[7]}',
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
                        groupValue: content.eixo[2].tema[3].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[7].resposta = T;
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
                    '4.9) ${content.eixo[2].tema[3].questao[8]}',
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
                        groupValue: content.eixo[2].tema[3].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[8].resposta = T;
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
                    '4.10) ${content.eixo[2].tema[3].questao[9]}',
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
                        groupValue: content.eixo[2].tema[3].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[3].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[3].questao[9].resposta = T;
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
                  content.eixo[2].tema[4].tema,
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
                    '5.1) ${content.eixo[2].tema[4].questao[0]}',
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
                        groupValue: content.eixo[2].tema[4].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[0].resposta = T;
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
                    '5.2) ${content.eixo[2].tema[4].questao[1]}',
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
                        groupValue: content.eixo[2].tema[4].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[1].resposta = T;
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
                    '5.3) ${content.eixo[2].tema[4].questao[2]}',
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
                        groupValue: content.eixo[2].tema[4].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[2].resposta = T;
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
                    '5.4) ${content.eixo[2].tema[4].questao[3]}',
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
                        groupValue: content.eixo[2].tema[4].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[3].resposta = T;
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
                    '5.5) ${content.eixo[2].tema[4].questao[4]}',
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
                        groupValue: content.eixo[2].tema[4].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[4].resposta = T;
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
                    '5.6) ${content.eixo[2].tema[4].questao[5]}',
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
                        groupValue: content.eixo[2].tema[4].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[5].resposta = T;
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
                    '5.7) ${content.eixo[2].tema[4].questao[6]}',
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
                        groupValue: content.eixo[2].tema[4].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[6].resposta = T;
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
                    '5.8) ${content.eixo[2].tema[4].questao[7]}',
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
                        groupValue: content.eixo[2].tema[4].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[7].resposta = T;
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
                    '5.9) ${content.eixo[2].tema[4].questao[8]}',
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
                        groupValue: content.eixo[2].tema[4].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[8].resposta = T;
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
                    '5.10) ${content.eixo[2].tema[4].questao[9]}',
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
                        groupValue: content.eixo[2].tema[4].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[4].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[4].questao[9].resposta = T;
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
                  content.eixo[2].tema[5].tema,
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
                    '6.1) ${content.eixo[2].tema[5].questao[0]}',
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
                        groupValue: content.eixo[2].tema[5].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[0].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[0].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[0].resposta = T;
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
                    '6.2) ${content.eixo[2].tema[5].questao[1]}',
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
                        groupValue: content.eixo[2].tema[5].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[1].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[1].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[1].resposta = T;
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
                    '6.3) ${content.eixo[2].tema[5].questao[2]}',
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
                        groupValue: content.eixo[2].tema[5].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[2].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[2].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[2].resposta = T;
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
                    '6.4) ${content.eixo[2].tema[5].questao[3]}',
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
                        groupValue: content.eixo[2].tema[5].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[3].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[3].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[3].resposta = T;
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
                    '6.5) ${content.eixo[2].tema[5].questao[4]}',
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
                        groupValue: content.eixo[2].tema[5].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[4].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[4].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[4].resposta = T;
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
                    '6.6) ${content.eixo[2].tema[5].questao[5]}',
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
                        groupValue: content.eixo[2].tema[5].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[5].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[5].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[5].resposta = T;
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
                    '6.7) ${content.eixo[2].tema[5].questao[6]}',
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
                        groupValue: content.eixo[2].tema[5].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[6].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[6].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[6].resposta = T;
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
                    '6.8) ${content.eixo[2].tema[5].questao[7]}',
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
                        groupValue: content.eixo[2].tema[5].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[7].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[7].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[7].resposta = T;
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
                    '6.9)${content.eixo[2].tema[5].questao[8]}',
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
                        groupValue: content.eixo[2].tema[5].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[8].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[8].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[8].resposta = T;
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
                    '6.10) ${content.eixo[2].tema[5].questao[9]}',
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
                        groupValue: content.eixo[2].tema[5].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[9].resposta = T;
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
                        groupValue: content.eixo[2].tema[5].questao[9].resposta,
                        onChanged: (T) {
                          setState(() {
                            content.eixo[2].tema[5].questao[9].resposta = T;
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

          /// divisor
          ///
          Container(
            child: Center(
              child: RaisedButton.icon(
                onPressed: () {
                  Questionario eixo = content.eixo[2];
                  eixo.end();
                  String csv = Utils.questToCsv(eixo, ";");
                  Utils.write(csv,
                          "eixo3_${eixo.pessoa.nome.replaceAll(" ", "_")}_${eixo.pessoa.dataNascimentoText()}_;.csv")
                      .then(Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Questionário salvo!"),
                      )))
                      .catchError(Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Questionário salvo!"),
                        backgroundColor: Color.fromRGBO(200, 0, 0, 1),
                      )));
                },
                icon: Icon(Icons.save),
                label: Text('Salvar Formulário do Eixo 3'),
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  bool get wantKeepAlive => true;
}
