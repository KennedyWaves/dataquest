import 'package:flutter/material.dart';
import 'content.dart';

@override
class TelaDeQuestionario extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}

// --- EIXO 1 --- //
//TEMA QUALIDADE DA MORADIA - T1

//TEMA GESTÃO AMBIENTAL EPATRIMONIAL - T2
int e1t2p1;
int e1t2p2;
int e1t2p3;
int e1t2p4;
int e1t2p5;
int e1t2p6;
int e1t2p7;
int e1t2p8;
int e1t2p9;
int e1t2p10;

//TEMA ECONOMIA  CIRCULAR - T3
int e1t3p1;
int e1t3p2;
int e1t3p3;
int e1t3p4;
int e1t3p5;
int e1t3p6;
int e1t3p7;
int e1t3p8;
int e1t3p9;
int e1t3p10;

//TEMA DESENVOLVIMENTO LOCAL - T4
int e1t4p1;
int e1t4p2;
int e1t4p3;
int e1t4p4;
int e1t4p5;
int e1t4p6;
int e1t4p7;
int e1t4p8;
int e1t4p9;
int e1t4p10;

//TEMA INOVAÇÃO E USO DO PATRIMÔNIO  - T5
int e1t5p1;
int e1t5p2;
int e1t5p3;
int e1t5p4;
int e1t5p5;
int e1t5p6;
int e1t5p7;
int e1t5p8;
int e1t5p9;
int e1t5p10;

//TEMA BOM VIVER  - T6
int e1t6p1;
int e1t6p2;
int e1t6p3;
int e1t6p4;
int e1t6p5;
int e1t6p6;
int e1t6p7;
int e1t6p8;
int e1t6p9;
int e1t6p10;

// --- EIXO 2 --- //
//TEMA EDUCAÇÃO - T1
int e2t1p1;
int e2t1p2;
int e2t1p3;
int e2t1p4;
int e2t1p5;
int e2t1p6;
int e2t1p7;
int e2t1p8;
int e2t1p9;
int e2t1p10;

//TEMA SEGURANÇA E TOLERÂNCIA - T2
int e2t2p1;
int e2t2p2;
int e2t2p3;
int e2t2p4;
int e2t2p5;
int e2t2p6;
int e2t2p7;
int e2t2p8;
int e2t2p9;
int e2t2p10;

//TEMA SAÚDE E ALIMENTAÇÃO - T3
int e2t3p1;
int e2t3p2;
int e2t3p3;
int e2t3p4;
int e2t3p5;
int e2t3p6;
int e2t3p7;
int e2t3p8;
int e2t3p9;
int e2t3p10;

//TEMA COMUNIDADE - T4
int e2t4p1;
int e2t4p2;
int e2t4p3;
int e2t4p4;
int e2t4p5;
int e2t4p6;
int e2t4p7;
int e2t4p8;
int e2t4p9;
int e2t4p10;

//TEMA TRABALHO/OCUPAÇÃO, RENDA E CONSUMO  - T5
int e2t5p1;
int e2t5p2;
int e2t5p3;
int e2t5p4;
int e2t5p5;
int e2t5p6;
int e2t5p7;
int e2t5p8;
int e2t5p9;
int e2t5p10;

//TEMA COMUNICAÇÃO E INTERAÇÃO SOCIAL  - T6
int e2t6p1;
int e2t6p2;
int e2t6p3;
int e2t6p4;
int e2t6p5;
int e2t6p6;
int e2t6p7;
int e2t6p8;
int e2t6p9;
int e2t6p10;

// --- EIXO 3 --- //
//TEMA BIOINDICADORES - T1
int e3t1p1;
int e3t1p2;
int e3t1p3;
int e3t1p4;
int e3t1p5;
int e3t1p6;
int e3t1p7;
int e3t1p8;
int e3t1p9;
int e3t1p10;

//TEMA GEOINDICADORES - T2
int e3t2p1;
int e3t2p2;
int e3t2p3;
int e3t2p4;
int e3t2p5;
int e3t2p6;
int e3t2p7;
int e3t2p8;
int e3t2p9;
int e3t2p10;

//TEMA SEMIÓTICA CORPORAL - T3
int e3t3p1;
int e3t3p2;
int e3t3p3;
int e3t3p4;
int e3t3p5;
int e3t3p6;
int e3t3p7;
int e3t3p8;
int e3t3p9;
int e3t3p10;

//TEMA SEMIÓTICA AMBIENTAL - T4
int e3t4p1;
int e3t4p2;
int e3t4p3;
int e3t4p4;
int e3t4p5;
int e3t4p6;
int e3t4p7;
int e3t4p8;
int e3t4p9;
int e3t4p10;

//TEMA ATIVIDADE ECONÔMICA  - T5
int e3t5p1;
int e3t5p2;
int e3t5p3;
int e3t5p4;
int e3t5p5;
int e3t5p6;
int e3t5p7;
int e3t5p8;
int e3t5p9;
int e3t5p10;

//TEMA CIDADANIA E RELAÇÕES DE PODER  - T6
int e3t6p1;
int e3t6p2;
int e3t6p3;
int e3t6p4;
int e3t6p5;
int e3t6p6;
int e3t6p7;
int e3t6p8;
int e3t6p9;
int e3t6p10;

/// FIM EIXOS
///
///
//variáveis de uso da interface
List<String> _dataNascimentoText = <String>[
  '01-eeee01-1975',
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
                    content.dataEixo[0].eixo,
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
                margin: EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
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
                              content.dataEixo[0].pessoa.nome = value;
                              print(content.dataEixo[0].pessoa.nome);
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
                              initialDate: content.dataEixo[0].pessoa
                                  .dataNascimento == null
                                  ? DateTime.now()
                                  : content.dataEixo[0].pessoa.dataNascimento,
                              firstDate: DateTime(1925),
                              lastDate: DateTime(2019))
                              .then((date) {
                            setState(() {
                              content.dataEixo[0].pessoa.dataNascimento = date;
                              _dataNascimentoText[0] =
                                  content.dataEixo[0].pessoa
                                      .dataNascimentoText();
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      content.dataEixo[0].temas[0].tema,
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
                        '1.1) ${content.dataEixo[0].temas[0].questoes[0]}',
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
                            groupValue: content.dataEixo[0].temas[0].questoes[0]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[0]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[0]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[0]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[0]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[0]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[0]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[0]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[0]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[0]
                                    .resposta = T;
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
                        '1.2) ${content.dataEixo[0].temas[0].questoes[1]}',
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
                            groupValue: content.dataEixo[0].temas[0].questoes[1]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[1]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[1]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[1]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[1]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[1]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[1]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[1]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[1]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[1]
                                    .resposta = T;
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
                        '1.3) ${content.dataEixo[0].temas[0].questoes[2]}',
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
                            groupValue: content.dataEixo[0].temas[0].questoes[2]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[2]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[2]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[2]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[2]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[2]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[2]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[2]
                                    .resposta = T;
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
                            groupValue: content.dataEixo[0].temas[0].questoes[2]
                                .resposta,
                            onChanged: (T) {
                              setState(() {
                                content.dataEixo[0].temas[0].questoes[2]
                                    .resposta = T;
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
                        '1.4) Os espaços em sua moradia acomodam confortavelmente todos os que moram nela? R: $e2t1p4',
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                        '1.5) O banheiro de sua moradia tem tratamento dos dejetos? R: $e2t1p5',
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                        '1.6) Você faz coleta seletiva de seu lixo? R: $e2t1p6',
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                        '1.7) Existe fornecimento de energia elétrica em sua residência ou outra forma de geração de energia? R: $e2t1p7',
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                        '1.8) Você dispõe de refrigerador/geladeira em sua casa? R: $e2t1p8',
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                        '1.9) Há áreas verdes no entorno de sua casa? R: $e2t1p9',
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                        '1.10) Você possui horta e/ou árvores frutíferas em sua casa? R: $e2t1p10',
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      '2 - GESTÃO AMBIENTAL E PATRIMONIAL',
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
                        '2.1) Existe algum planejamento na comunidade para uso do território? R: $e2t2p1',
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                        '2.2) Existe alguma iniciativa do governo em relação à fiscalização patrimonial e ambiental? R: $e2t2p2',
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                        '2.3) Você utiliza a natureza de seu território de forma a respeitar os limites de uso? R: $e2t2p3',
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                        '2.4) Você guarda objetos e outras lembranças dos parentes antigos? R: $e2t2p4',
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                        '2.5) Você respeita os lugares em que existe proibição de uso e circulação? R: $e2t2p5',
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                        '2.6) Existe no território de sua comunidade vestígios de outros povos que aqui habitaram? R: $e2t2p6',
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                        '2.7) Existe fiscalização dos impactos ambientais e patrimoniais pela comunidade? R: $e2t2p7',
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                        '2.8) A comunidade provoca impactos ambientais e patrimoniais em seu território? R: $e2t2p8',
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                        '2.9) Na escola da comunidade existe educação ambiental? R: $e2t2p9',
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                        '2.10) Na escola da comunidade existe educação patrimonial? R: $e2t2p10',
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      '3 - ECONOMIA  CIRCULAR',
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
                        '3.1) Você acredita que a área de mata é suficiente para comunidade? R: $e2t3p1',
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                        '3.2) Você acredita que a área de plantações e roças na comunidade deve ser aumentada? R: $e2t3p2',
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                        '3.3) Você utiliza apenas a quantidade necessária de produtos no seu cotidiano (limpeza, alimentação, etc.)? R: $e2t3p3',
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                        '3.4) Você tem mais de um exemplar de um mesmo produto/equipamento em seu trabalho ou em sua casa? R: $e2t3p4',
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                        '3.5) Você divide o uso de equipamentos/instrumento com outras pessoas em sua comunidade/trabalho? R: $e2t3p5',
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                        '3.6) Você utiliza um equipamento/instrumento até o fim de sua vida útil? R: $e2t3p6',
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                        '3.7) Você reaproveita as peças e as embalagens de produtos/equipamentos que você compra (reuso/reciclagem)? R: $e2t3p7',
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                        '3.8) Você repara/recondiciona os produtos/equipamentos que estão com problemas? R: $e2t3p8',
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                        '3.9) Você revende ou doa os produtos/equipamentos que não quer mais? R: $e2t3p9',
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                        '3.10) Você faz compostagem dos restos orgânicos? R: $e2t3p10',
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Center(
                    child: Text(
                      '4 - DESENVOLVIMENTO LOCAL',
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
                        '4.1) Existem ações de combate à fome na comunidade? R: $e2t4p1',
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                        '4.2) Existe ações institucionais de formação profissional na comunidade? R: $e2t4p2',
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                        '4.3) Existem políticas públicas que beneficiem a comunidade? R: $e2t4p3',
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                        '4.4) A comunidade produz artesanato próprio? R: $e2t4p4',
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                        '4.5) Existem ONG’s atuando na comunidade? R: $e2t4p5',
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                        '4.6) A universidade auxilia a comunidade na solução de seus problemas sociais e ambientais? R: $e2t4p6',
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                        '4.7) A comunidade desenvolve algum produto/técnica que a beneficie? R: $e2t4p7',
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                        '4.8) A comunidade desenvolve atividades relacionadas ao turismo?  R: $e2t4p8',
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                        '4.9) Existe planejamento participativo entre a comunidade e as diversas instituições atuantes no lugar? R: $e2t4p9',
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                        '4.10) Existem informações e levantamentos de dados sobre a comunidade? R: $e2t4p10',
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text(
                      '5 - INOVAÇÃO E USO DO PATRIMÔNIO',
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
                        '5.1) Para resolver alguns problemas cotidianos você usa a sabedoria dos antigos (idosos, parentes, tradição oral)? R: $e2t5p1',
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                        '5.2) Você conhece a história das pessoas e lugares de sua comunidade? R: $e2t5p2',
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                        '5.3) Você cuida dos espaços públicos mais antigos de sua comunidade? R: $e2t5p3',
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                        '5.4) Você aceita os conselhos dos mais velhos para resolver seus problemas?  R: $e2t5p4',
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                        '5.5) Você procura renovar os conhecimentos antigos de sua comunidade? R: $e2t5p5',
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                        '5.6) Você se inspira na forma dos animais e vegetais para criar soluções aos problemas da comunidade? R: $e2t5p6',
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                        '5.7) Você utiliza os movimentos e os ciclos da natureza em sua vida cotidiana? R: $e2t5p7',
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                        '5.8) Você tem plantas e raízes tradicionais para seu uso doméstico (alimentação, saúde)?  R: $e2t5p8',
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                        '5.9) Você procura utilizar a água da chuva e águas servidas para uso  doméstico? R: $e2t5p9',
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                        '5.10) Você aproveita a energia do sol/a luz solar para facilitar os trabalhos do dia a dia? R: $e2t5p10',
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      '6 - BOM VIVER',
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
                        '6.1) Você realiza atividades coletivas ou mutirão com seus vizinhos para a solução de problemas da comunidade? R: $e2t6p1',
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                        '6.2) Você compartilha um bem seu ou de outra pessoa para uso coletivo? R: $e2t6p2',
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                        '6.3) A colaboração entre pessoas pode ser um caminho para a sustentabilidade da comunidade e da natureza?  R: $e2t6p3',
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                        '6.4) Você acredita que o moderno pode viver em equilíbrio com o antigo?  R: $e2t6p4',
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                        '6.5) Você acredita que todas as coisas e os seres do mundo têm a mesma importância, sejam humanos ou não humanos? R: $e2t6p5',
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                        '6.6) Você se considera uma pessoa solidária para com as dificuldades alheias? R: $e2t6p6',
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                        '6.7) A acumulação de bens é uma forma de sermos importantes na sociedade em que vivemos? R: $e2t6p7',
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                        '6.8) Comprar e consumir produtos à venda traz felicidade?  R: $e2t6p8',
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                        '6.9) Você se sente bem vivendo na sua comunidade? R: $e2t6p9',
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                        '6.10) Na sua comunidade tem tudo que você precisa para viver bem? R: $e2t6p10',
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                      print('Salvo');
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
    content.dataEixo[1].start();
    content.dataEixo[1].pessoa.nome = content.dataEixo[0].pessoa.nome;
    content.dataEixo[1].pessoa.dataNascimento =
        content.dataEixo[0].pessoa.dataNascimento;

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
                margin: EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
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
                              content.dataEixo[1].pessoa.nome = '$value';
                              print(content.dataEixo[1].pessoa.nome);
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
                        'Data de Nascimento: $content.dataEixo[1].pessoa.dataNascimento',
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
                              initialDate: content.dataEixo[1].pessoa
                                  .dataNascimento == null
                                  ? DateTime.now()
                                  : content.dataEixo[1].pessoa.dataNascimento,
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2021))
                              .then((date) {
                            setState(() {
                              content.dataEixo[1].pessoa.dataNascimento = date;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      '1 - EDUCAÇÃO',
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
                        '1.1) A educação escolar na comunidade é satisfatória? R: $e2t1p1',
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
                            groupValue: e2t1p1,
                            onChanged: (T) {
                              setState(() {
                                e2t1p1 = T;
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
                            groupValue: e2t1p1,
                            onChanged: (T) {
                              setState(() {
                                e2t1p1 = T;
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
                            groupValue: e2t1p1,
                            onChanged: (T) {
                              setState(() {
                                e2t1p1 = T;
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
                            groupValue: e2t1p1,
                            onChanged: (T) {
                              setState(() {
                                e2t1p1 = T;
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
                            groupValue: e2t1p1,
                            onChanged: (T) {
                              setState(() {
                                e2t1p1 = T;
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
                        '1.2) O que é ensinado serve para a comunidade? R: $e2t1p2',
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
                            groupValue: e2t1p2,
                            onChanged: (T) {
                              setState(() {
                                e2t1p2 = T;
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
                            groupValue: e2t1p2,
                            onChanged: (T) {
                              setState(() {
                                e2t1p2 = T;
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
                            groupValue: e2t1p2,
                            onChanged: (T) {
                              setState(() {
                                e2t1p2 = T;
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
                            groupValue: e2t1p2,
                            onChanged: (T) {
                              setState(() {
                                e2t1p2 = T;
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
                            groupValue: e2t1p2,
                            onChanged: (T) {
                              setState(() {
                                e2t1p2 = T;
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
                        '1.3) A escola aproveita os conhecimentos da comunidade? R: $e2t1p3',
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
                            groupValue: e2t1p3,
                            onChanged: (T) {
                              setState(() {
                                e2t1p3 = T;
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
                            groupValue: e2t1p3,
                            onChanged: (T) {
                              setState(() {
                                e2t1p3 = T;
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
                            groupValue: e2t1p3,
                            onChanged: (T) {
                              setState(() {
                                e2t1p3 = T;
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
                            groupValue: e2t1p3,
                            onChanged: (T) {
                              setState(() {
                                e2t1p3 = T;
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
                            groupValue: e2t1p3,
                            onChanged: (T) {
                              setState(() {
                                e2t1p3 = T;
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
                        '1.4) . A escola atende a todos os indivíduos em idade escolar a partir de 6 anos)? R: $e2t1p4',
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                            groupValue: e2t1p4,
                            onChanged: (T) {
                              setState(() {
                                e2t1p4 = T;
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
                        '1.5) Os alunos entendem/aprendem bem o que os professores ensinam? R: $e2t1p5',
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                            groupValue: e2t1p5,
                            onChanged: (T) {
                              setState(() {
                                e2t1p5 = T;
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
                        '1.6) Os estudantes tem a assistência escolar (infraestrutura escolar) da qual necessitam? R: $e2t1p6',
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                            groupValue: e2t1p6,
                            onChanged: (T) {
                              setState(() {
                                e2t1p6 = T;
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
                        '1.7) Os estudantes são incentivados, na escola, para a tolerância e a solidariedade? R: $e2t1p7',
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                            groupValue: e2t1p7,
                            onChanged: (T) {
                              setState(() {
                                e2t1p7 = T;
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
                        '1.8) São utilizados recursos tecnológicos e Internet nas aulas? R: $e2t1p8',
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                            groupValue: e2t1p8,
                            onChanged: (T) {
                              setState(() {
                                e2t1p8 = T;
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
                        '1.9) A comunidade participa da gestão da escola? R: $e2t1p9',
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                            groupValue: e2t1p9,
                            onChanged: (T) {
                              setState(() {
                                e2t1p9 = T;
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
                        '1.10) A escola (alunos/professores) participa de eventos em outros lugares? R: $e2t1p10',
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                            groupValue: e2t1p10,
                            onChanged: (T) {
                              setState(() {
                                e2t1p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      '2 - SEGURANÇA E TOLERÂNCIA',
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
                        '2.1) Você se sente seguro (a) em sua comunidade? R: $e2t2p1',
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                            groupValue: e2t2p1,
                            onChanged: (T) {
                              setState(() {
                                e2t2p1 = T;
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
                        '2.2) A polícia/segurança comunitária garante proteção à comunidade? R: $e2t2p2',
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                            groupValue: e2t2p2,
                            onChanged: (T) {
                              setState(() {
                                e2t2p2 = T;
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
                        '2.3) Há presença de tráfico de drogas na comunidade? R: $e2t2p3',
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                            groupValue: e2t2p3,
                            onChanged: (T) {
                              setState(() {
                                e2t2p3 = T;
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
                        '2.4) As instituições de Estado garantem seus direitos?  R: $e2t2p4',
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                            groupValue: e2t2p4,
                            onChanged: (T) {
                              setState(() {
                                e2t2p4 = T;
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
                        '2.5) Há casos de disputa por terras na comunidade?  R: $e2t2p5',
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                            groupValue: e2t2p5,
                            onChanged: (T) {
                              setState(() {
                                e2t2p5 = T;
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
                        '2.6) Os jovens se envolvem em conflitos e brigas na comunidade?  R: $e2t2p6',
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                            groupValue: e2t2p6,
                            onChanged: (T) {
                              setState(() {
                                e2t2p6 = T;
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
                        '2.7) Você presencia brigas em sua família/comunidade? R: $e2t2p7',
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                            groupValue: e2t2p7,
                            onChanged: (T) {
                              setState(() {
                                e2t2p7 = T;
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
                        '2.8) Você costuma respeitar a opinião de outras pessoas? R: $e2t2p8',
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                            groupValue: e2t2p8,
                            onChanged: (T) {
                              setState(() {
                                e2t2p8 = T;
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
                        '2.9) Existe respeito pelas pessoas idosas na comunidade? R: $e2t2p9',
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                            groupValue: e2t2p9,
                            onChanged: (T) {
                              setState(() {
                                e2t2p9 = T;
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
                        '2.10) As pessoas usam seus pertences sem pedirem autorização? R: $e2t2p10',
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                            groupValue: e2t2p10,
                            onChanged: (T) {
                              setState(() {
                                e2t2p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      '3 - SAÚDE E ALIMENTAÇÃO',
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
                        '3.1) Você come bem todos os dias? R: $e2t3p1',
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                            groupValue: e2t3p1,
                            onChanged: (T) {
                              setState(() {
                                e2t3p1 = T;
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
                        '3.2) A quantidade e a variedade de alimentos que você consome diariamente são satisfatórias? R: $e2t3p2',
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                            groupValue: e2t3p2,
                            onChanged: (T) {
                              setState(() {
                                e2t3p2 = T;
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
                        '3.3) Os alimentos consumidos por sua família são bons?  R: $e2t3p3',
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                            groupValue: e2t3p3,
                            onChanged: (T) {
                              setState(() {
                                e2t3p3 = T;
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
                        '3.4) Os membros de sua família adoecem com frequência? R: $e2t3p4',
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                            groupValue: e2t3p4,
                            onChanged: (T) {
                              setState(() {
                                e2t3p4 = T;
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
                        '3.5) As pessoas em sua comunidade chegam aos 70 anos?  R: $e2t3p5',
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                            groupValue: e2t3p5,
                            onChanged: (T) {
                              setState(() {
                                e2t3p5 = T;
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
                        '3.6) Você tem facilidade em conseguir as medicações/remédios caseiros necessários?  R: $e2t3p6',
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                            groupValue: e2t3p6,
                            onChanged: (T) {
                              setState(() {
                                e2t3p6 = T;
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
                        '3.7) Sua família tem fácil acesso ao atendimento em saúde? R: $e2t3p7',
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                            groupValue: e2t3p7,
                            onChanged: (T) {
                              setState(() {
                                e2t3p7 = T;
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
                        '3.8) Os Agentes  Comunitários de Saúde atuam satisfatoriamente em sua comunidade? R: $e2t3p8',
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                            groupValue: e2t3p8,
                            onChanged: (T) {
                              setState(() {
                                e2t3p8 = T;
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
                        '3.9) Há facilidade em realizar tratamento de saúde em sua comunidade? R: $e2t3p9',
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                            groupValue: e2t3p9,
                            onChanged: (T) {
                              setState(() {
                                e2t3p9 = T;
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
                        '3.10) Você acredita que as instituições de Estado garantem saúde de qualidade? R: $e2t3p10',
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                            groupValue: e2t3p10,
                            onChanged: (T) {
                              setState(() {
                                e2t3p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Center(
                    child: Text(
                      '4 - COMUNIDADE',
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
                        '4.1) Existe uma boa organização das moradias e de outros espaços em sua comunidade? R: $e2t4p1',
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                            groupValue: e2t4p1,
                            onChanged: (T) {
                              setState(() {
                                e2t4p1 = T;
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
                        '4.2) Você considera que o terreno de sua moradia é suficiente comparado ao dos seus vizinhos? R: $e2t4p2',
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                            groupValue: e2t4p2,
                            onChanged: (T) {
                              setState(() {
                                e2t4p2 = T;
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
                        '4.3) Você divide frequentemente bens e espaços com as demais pessoas da comunidade? R: $e2t4p3',
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                            groupValue: e2t4p3,
                            onChanged: (T) {
                              setState(() {
                                e2t4p3 = T;
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
                        '4.4) Existe abastecimento de água para a comunidade? R: $e2t4p4',
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                            groupValue: e2t4p4,
                            onChanged: (T) {
                              setState(() {
                                e2t4p4 = T;
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
                        '4.5) Existe fornecimento de energia elétrica na comunidade?  R: $e2t4p5',
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                            groupValue: e2t4p5,
                            onChanged: (T) {
                              setState(() {
                                e2t4p5 = T;
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
                        '4.6) A frequência da coleta do lixo é adequada? R: $e2t4p6',
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                            groupValue: e2t4p6,
                            onChanged: (T) {
                              setState(() {
                                e2t4p6 = T;
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
                        '4.7) A comunidade dispõe de sistema de tratamento de esgoto? R: $e2t4p7',
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                            groupValue: e2t4p7,
                            onChanged: (T) {
                              setState(() {
                                e2t4p7 = T;
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
                        '4.8) Você considera que a comunidade é bem cuidada?  R: $e2t4p8',
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                            groupValue: e2t4p8,
                            onChanged: (T) {
                              setState(() {
                                e2t4p8 = T;
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
                        '4.9) Há frequentemente atividades coletivas em sua comunidade? R: $e2t4p9',
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                            groupValue: e2t4p9,
                            onChanged: (T) {
                              setState(() {
                                e2t4p9 = T;
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
                        '4.10) Você tem tudo o que é necessário para se viver bem? R: $e2t4p10',
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                            groupValue: e2t4p10,
                            onChanged: (T) {
                              setState(() {
                                e2t4p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text(
                      '5 - TRABALHO/OCUPAÇÃO RENDA E CONSUMO',
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
                        '5.1) O dinheiro que sua família ganha é o bastante para comprar o que necessita? R: $e2t5p1',
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                            groupValue: e2t5p1,
                            onChanged: (T) {
                              setState(() {
                                e2t5p1 = T;
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
                        '5.2) Você paga por tudo o que é necessário à sua subsistência?  R: $e2t5p2',
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                            groupValue: e2t5p2,
                            onChanged: (T) {
                              setState(() {
                                e2t5p2 = T;
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
                        '5.3) Você compra tudo o que os vendedores lhe oferecem?  R: $e2t5p3',
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                            groupValue: e2t5p3,
                            onChanged: (T) {
                              setState(() {
                                e2t5p3 = T;
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
                        '5.4) Seu trabalho/ocupação prejudica o ambiente?  R: $e2t5p4',
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                            groupValue: e2t5p4,
                            onChanged: (T) {
                              setState(() {
                                e2t5p4 = T;
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
                        '5.5) Você considera que seu trabalho/ocupação é perigoso?  R: $e2t5p5',
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                            groupValue: e2t5p5,
                            onChanged: (T) {
                              setState(() {
                                e2t5p5 = T;
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
                        '5.6) Sua relação com o empregador/intermediário de seu trabalho é satisfatória? R: $e2t5p6',
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                            groupValue: e2t5p6,
                            onChanged: (T) {
                              setState(() {
                                e2t5p6 = T;
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
                        '5.7) Existem brigas e conflitos entre os companheiros de trabalho/ocupação? R: $e2t5p7',
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                            groupValue: e2t5p7,
                            onChanged: (T) {
                              setState(() {
                                e2t5p7 = T;
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
                        '5.8) A sua família trabalha com atividades relacionadas ao turismo?  R: $e2t5p8',
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                            groupValue: e2t5p8,
                            onChanged: (T) {
                              setState(() {
                                e2t5p8 = T;
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
                        '5.9) A comunidade reconhece a importância de seu trabalho/ocupação? R: $e2t5p9',
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                            groupValue: e2t5p9,
                            onChanged: (T) {
                              setState(() {
                                e2t5p9 = T;
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
                        '5.10) Seu trabalho só pode ser realizado coletivamente? R: $e2t5p10',
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                            groupValue: e2t5p10,
                            onChanged: (T) {
                              setState(() {
                                e2t5p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      '6 - COMUNICAÇÃO E INTERAÇÃO SOCIAL',
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
                        '6.1) Você tem acesso à Internet/redes sociais em sua comunidade? R: $e2t6p1',
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                            groupValue: e2t6p1,
                            onChanged: (T) {
                              setState(() {
                                e2t6p1 = T;
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
                        '6.2) Você assiste televisão todos os dias? R: $e2t6p2',
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                            groupValue: e2t6p2,
                            onChanged: (T) {
                              setState(() {
                                e2t6p2 = T;
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
                        '6.3) Você ouve rádio todos os dias?  R: $e2t6p3',
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                            groupValue: e2t6p3,
                            onChanged: (T) {
                              setState(() {
                                e2t6p3 = T;
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
                        '6.4) Você sabe das notícias do restante do Brasil com frequência? R: $e2t6p4',
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                            groupValue: e2t6p4,
                            onChanged: (T) {
                              setState(() {
                                e2t6p4 = T;
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
                        '6.5) Você acredita em todas as notícias que recebe pelos meios de comunicação? R: $e2t6p5',
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                            groupValue: e2t6p5,
                            onChanged: (T) {
                              setState(() {
                                e2t6p5 = T;
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
                        '6.6) Sua comunidade produz e divulga notícias audiovisuais próprias,  divulgando informações sobre suas atividades e reivindicações? R: $e2t6p6',
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                            groupValue: e2t6p6,
                            onChanged: (T) {
                              setState(() {
                                e2t6p6 = T;
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
                        '6.7) A qualidade do sinal de telefonia celular permite uma boa comunicação?  R: $e2t6p7',
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                            groupValue: e2t6p7,
                            onChanged: (T) {
                              setState(() {
                                e2t6p7 = T;
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
                        '6.8) Você tem facilidade de transporte para fora de sua comunidade?  R: $e2t6p8',
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                            groupValue: e2t6p8,
                            onChanged: (T) {
                              setState(() {
                                e2t6p8 = T;
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
                        '6.9) Você se incomoda com a imagem da sua comunidade apresentada nos meios de comunicação e pessoas de fora? R: $e2t6p9',
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                            groupValue: e2t6p9,
                            onChanged: (T) {
                              setState(() {
                                e2t6p9 = T;
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
                        '6.10) Você é influenciado em suas escolhas por pessoas de seu convívio social? R: $e2t6p10',
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                            groupValue: e2t6p10,
                            onChanged: (T) {
                              setState(() {
                                e2t6p10 = T;
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
                      print('Salvo');
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
    content.dataEixo[2].start();
    content.dataEixo[2].pessoa.nome = content.dataEixo[0].pessoa.nome;
    content.dataEixo[2].pessoa.dataNascimento =
        content.dataEixo[0].pessoa.dataNascimento;

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
                margin: EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
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
                              content.dataEixo[2].pessoa.nome = '$value';
                              print(content.dataEixo[2].pessoa.nome);
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
                        'Data de Nascimento: $content.dataEixo[2].pessoa.dataNascimento',
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
                              initialDate: content.dataEixo[2].pessoa
                                  .dataNascimento == null
                                  ? DateTime.now()
                                  : content.dataEixo[2].pessoa.dataNascimento,
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2021))
                              .then((date) {
                            setState(() {
                              content.dataEixo[2].pessoa.dataNascimento = date;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      '1 - BIOINDICADORES',
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
                        '1.1) Você tem observado alteração na quantidade de algum animal ou inseto? R: $e3t1p1',
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
                            groupValue: e3t1p1,
                            onChanged: (T) {
                              setState(() {
                                e3t1p1 = T;
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
                            groupValue: e3t1p1,
                            onChanged: (T) {
                              setState(() {
                                e3t1p1 = T;
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
                            groupValue: e3t1p1,
                            onChanged: (T) {
                              setState(() {
                                e3t1p1 = T;
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
                            groupValue: e3t1p1,
                            onChanged: (T) {
                              setState(() {
                                e3t1p1 = T;
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
                            groupValue: e3t1p1,
                            onChanged: (T) {
                              setState(() {
                                e3t1p1 = T;
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
                        '1.2) Você tem observado alteração na quantidade de algum vegetal ou planta? R: $e3t1p2',
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
                            groupValue: e3t1p2,
                            onChanged: (T) {
                              setState(() {
                                e3t1p2 = T;
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
                            groupValue: e3t1p2,
                            onChanged: (T) {
                              setState(() {
                                e3t1p2 = T;
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
                            groupValue: e3t1p2,
                            onChanged: (T) {
                              setState(() {
                                e3t1p2 = T;
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
                            groupValue: e3t1p2,
                            onChanged: (T) {
                              setState(() {
                                e3t1p2 = T;
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
                            groupValue: e3t1p2,
                            onChanged: (T) {
                              setState(() {
                                e3t1p2 = T;
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
                        '1.3) O crescimento de plantas e animais tem sido normal na comunidade?  R: $e3t1p3',
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
                            groupValue: e3t1p3,
                            onChanged: (T) {
                              setState(() {
                                e3t1p3 = T;
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
                            groupValue: e3t1p3,
                            onChanged: (T) {
                              setState(() {
                                e3t1p3 = T;
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
                            groupValue: e3t1p3,
                            onChanged: (T) {
                              setState(() {
                                e3t1p3 = T;
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
                            groupValue: e3t1p3,
                            onChanged: (T) {
                              setState(() {
                                e3t1p3 = T;
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
                            groupValue: e3t1p3,
                            onChanged: (T) {
                              setState(() {
                                e3t1p3 = T;
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
                        '1.4) A qualidade e a quantidade do pescado se mantém estável?  R: $e3t1p4',
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
                            groupValue: e3t1p4,
                            onChanged: (T) {
                              setState(() {
                                e3t1p4 = T;
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
                            groupValue: e3t1p4,
                            onChanged: (T) {
                              setState(() {
                                e3t1p4 = T;
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
                            groupValue: e3t1p4,
                            onChanged: (T) {
                              setState(() {
                                e3t1p4 = T;
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
                            groupValue: e3t1p4,
                            onChanged: (T) {
                              setState(() {
                                e3t1p4 = T;
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
                            groupValue: e3t1p4,
                            onChanged: (T) {
                              setState(() {
                                e3t1p4 = T;
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
                        '1.5) Os bandos de aves tem desaparecido com o passar dos anos? R: $e3t1p5',
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
                            groupValue: e3t1p5,
                            onChanged: (T) {
                              setState(() {
                                e3t1p5 = T;
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
                            groupValue: e3t1p5,
                            onChanged: (T) {
                              setState(() {
                                e3t1p5 = T;
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
                            groupValue: e3t1p5,
                            onChanged: (T) {
                              setState(() {
                                e3t1p5 = T;
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
                            groupValue: e3t1p5,
                            onChanged: (T) {
                              setState(() {
                                e3t1p5 = T;
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
                            groupValue: e3t1p5,
                            onChanged: (T) {
                              setState(() {
                                e3t1p5 = T;
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
                        '1.6) As chuvas e tempestades sofreram alteração nos últimos anos? R: $e3t1p6',
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
                            groupValue: e3t1p6,
                            onChanged: (T) {
                              setState(() {
                                e3t1p6 = T;
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
                            groupValue: e3t1p6,
                            onChanged: (T) {
                              setState(() {
                                e3t1p6 = T;
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
                            groupValue: e3t1p6,
                            onChanged: (T) {
                              setState(() {
                                e3t1p6 = T;
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
                            groupValue: e3t1p6,
                            onChanged: (T) {
                              setState(() {
                                e3t1p6 = T;
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
                            groupValue: e3t1p6,
                            onChanged: (T) {
                              setState(() {
                                e3t1p6 = T;
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
                        '1.7) O clima/temperatura, na comunidade, mudou nos últimos anos? R: $e3t1p7',
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
                            groupValue: e3t1p7,
                            onChanged: (T) {
                              setState(() {
                                e3t1p7 = T;
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
                            groupValue: e3t1p7,
                            onChanged: (T) {
                              setState(() {
                                e3t1p7 = T;
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
                            groupValue: e3t1p7,
                            onChanged: (T) {
                              setState(() {
                                e3t1p7 = T;
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
                            groupValue: e3t1p7,
                            onChanged: (T) {
                              setState(() {
                                e3t1p7 = T;
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
                            groupValue: e3t1p7,
                            onChanged: (T) {
                              setState(() {
                                e3t1p7 = T;
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
                        '1.8) Existem árvores, em sua comunidade, que tem mais de 30 anos?  R: $e3t1p8',
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
                            groupValue: e3t1p8,
                            onChanged: (T) {
                              setState(() {
                                e3t1p8 = T;
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
                            groupValue: e3t1p8,
                            onChanged: (T) {
                              setState(() {
                                e3t1p8 = T;
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
                            groupValue: e3t1p8,
                            onChanged: (T) {
                              setState(() {
                                e3t1p8 = T;
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
                            groupValue: e3t1p8,
                            onChanged: (T) {
                              setState(() {
                                e3t1p8 = T;
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
                            groupValue: e3t1p8,
                            onChanged: (T) {
                              setState(() {
                                e3t1p8 = T;
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
                        '1.9) Houve o aumento de lodo, algas, fungos ou mofos na sua comunidade? R: $e3t1p9',
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
                            groupValue: e3t1p9,
                            onChanged: (T) {
                              setState(() {
                                e3t1p9 = T;
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
                            groupValue: e3t1p9,
                            onChanged: (T) {
                              setState(() {
                                e3t1p9 = T;
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
                            groupValue: e3t1p9,
                            onChanged: (T) {
                              setState(() {
                                e3t1p9 = T;
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
                            groupValue: e3t1p9,
                            onChanged: (T) {
                              setState(() {
                                e3t1p9 = T;
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
                            groupValue: e3t1p9,
                            onChanged: (T) {
                              setState(() {
                                e3t1p9 = T;
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
                        '1.10) Existem muitos casos de aborto (humanos e animais) na comunidade? R: $e3t1p10',
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
                            groupValue: e3t1p10,
                            onChanged: (T) {
                              setState(() {
                                e3t1p10 = T;
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
                            groupValue: e3t1p10,
                            onChanged: (T) {
                              setState(() {
                                e3t1p10 = T;
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
                            groupValue: e3t1p10,
                            onChanged: (T) {
                              setState(() {
                                e3t1p10 = T;
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
                            groupValue: e3t1p10,
                            onChanged: (T) {
                              setState(() {
                                e3t1p10 = T;
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
                            groupValue: e3t1p10,
                            onChanged: (T) {
                              setState(() {
                                e3t1p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      '2 - GEOINDICADORES',
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
                        '2.1) A comunidade degrada a natureza (queimada, desmatamento, poluição)? R: $e3t2p1',
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
                            groupValue: e3t2p1,
                            onChanged: (T) {
                              setState(() {
                                e3t2p1 = T;
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
                            groupValue: e3t2p1,
                            onChanged: (T) {
                              setState(() {
                                e3t2p1 = T;
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
                            groupValue: e3t2p1,
                            onChanged: (T) {
                              setState(() {
                                e3t2p1 = T;
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
                            groupValue: e3t2p1,
                            onChanged: (T) {
                              setState(() {
                                e3t2p1 = T;
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
                            groupValue: e3t2p1,
                            onChanged: (T) {
                              setState(() {
                                e3t2p1 = T;
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
                        '2.2) ) A comunidade preserva/protege a natureza (matas, rios)? R: $e3t2p2',
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
                            groupValue: e3t2p2,
                            onChanged: (T) {
                              setState(() {
                                e3t2p2 = T;
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
                            groupValue: e3t2p2,
                            onChanged: (T) {
                              setState(() {
                                e3t2p2 = T;
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
                            groupValue: e3t2p2,
                            onChanged: (T) {
                              setState(() {
                                e3t2p2 = T;
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
                            groupValue: e3t2p2,
                            onChanged: (T) {
                              setState(() {
                                e3t2p2 = T;
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
                            groupValue: e3t2p2,
                            onChanged: (T) {
                              setState(() {
                                e3t2p2 = T;
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
                        '2.3) Existe desperdício de água na comunidade? R: $e3t2p3',
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
                            groupValue: e3t2p3,
                            onChanged: (T) {
                              setState(() {
                                e3t2p3 = T;
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
                            groupValue: e3t2p3,
                            onChanged: (T) {
                              setState(() {
                                e3t2p3 = T;
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
                            groupValue: e3t2p3,
                            onChanged: (T) {
                              setState(() {
                                e3t2p3 = T;
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
                            groupValue: e3t2p3,
                            onChanged: (T) {
                              setState(() {
                                e3t2p3 = T;
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
                            groupValue: e3t2p3,
                            onChanged: (T) {
                              setState(() {
                                e3t2p3 = T;
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
                        '2.4) A qualidade da água dos rios/mares é boa?  R: $e3t2p4',
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
                            groupValue: e3t2p4,
                            onChanged: (T) {
                              setState(() {
                                e3t2p4 = T;
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
                            groupValue: e3t2p4,
                            onChanged: (T) {
                              setState(() {
                                e3t2p4 = T;
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
                            groupValue: e3t2p4,
                            onChanged: (T) {
                              setState(() {
                                e3t2p4 = T;
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
                            groupValue: e3t2p4,
                            onChanged: (T) {
                              setState(() {
                                e3t2p4 = T;
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
                            groupValue: e3t2p4,
                            onChanged: (T) {
                              setState(() {
                                e3t2p4 = T;
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
                        '2.5) O ar que você respira tem boa qualidade?  R: $e3t2p5',
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
                            groupValue: e3t2p5,
                            onChanged: (T) {
                              setState(() {
                                e3t2p5 = T;
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
                            groupValue: e3t2p5,
                            onChanged: (T) {
                              setState(() {
                                e3t2p5 = T;
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
                            groupValue: e3t2p5,
                            onChanged: (T) {
                              setState(() {
                                e3t2p5 = T;
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
                            groupValue: e3t2p5,
                            onChanged: (T) {
                              setState(() {
                                e3t2p5 = T;
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
                            groupValue: e3t2p5,
                            onChanged: (T) {
                              setState(() {
                                e3t2p5 = T;
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
                        '2.6) A terra na comunidade é boa para o plantio?  R: $e3t2p6',
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
                            groupValue: e3t2p6,
                            onChanged: (T) {
                              setState(() {
                                e3t2p6 = T;
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
                            groupValue: e3t2p6,
                            onChanged: (T) {
                              setState(() {
                                e3t2p6 = T;
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
                            groupValue: e3t2p6,
                            onChanged: (T) {
                              setState(() {
                                e3t2p6 = T;
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
                            groupValue: e3t2p6,
                            onChanged: (T) {
                              setState(() {
                                e3t2p6 = T;
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
                            groupValue: e3t2p6,
                            onChanged: (T) {
                              setState(() {
                                e3t2p6 = T;
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
                        '2.7) A comunidade produz muito lixo? R: $e3t2p7',
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
                            groupValue: e3t2p7,
                            onChanged: (T) {
                              setState(() {
                                e3t2p7 = T;
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
                            groupValue: e3t2p7,
                            onChanged: (T) {
                              setState(() {
                                e3t2p7 = T;
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
                            groupValue: e3t2p7,
                            onChanged: (T) {
                              setState(() {
                                e3t2p7 = T;
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
                            groupValue: e3t2p7,
                            onChanged: (T) {
                              setState(() {
                                e3t2p7 = T;
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
                            groupValue: e3t2p7,
                            onChanged: (T) {
                              setState(() {
                                e3t2p7 = T;
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
                        '2.8) As chuvas têm provocado prejuízos na comunidade? R: $e3t2p8',
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
                            groupValue: e3t2p8,
                            onChanged: (T) {
                              setState(() {
                                e3t2p8 = T;
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
                            groupValue: e3t2p8,
                            onChanged: (T) {
                              setState(() {
                                e3t2p8 = T;
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
                            groupValue: e3t2p8,
                            onChanged: (T) {
                              setState(() {
                                e3t2p8 = T;
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
                            groupValue: e3t2p8,
                            onChanged: (T) {
                              setState(() {
                                e3t2p8 = T;
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
                            groupValue: e3t2p8,
                            onChanged: (T) {
                              setState(() {
                                e3t2p8 = T;
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
                        '2.9) As cheias dos rios têm sofrido alterações nos últimos anos?  R: $e3t2p9',
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
                            groupValue: e3t2p9,
                            onChanged: (T) {
                              setState(() {
                                e3t2p9 = T;
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
                            groupValue: e3t2p9,
                            onChanged: (T) {
                              setState(() {
                                e3t2p9 = T;
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
                            groupValue: e3t2p9,
                            onChanged: (T) {
                              setState(() {
                                e3t2p9 = T;
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
                            groupValue: e3t2p9,
                            onChanged: (T) {
                              setState(() {
                                e3t2p9 = T;
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
                            groupValue: e3t2p9,
                            onChanged: (T) {
                              setState(() {
                                e3t2p9 = T;
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
                        '2.10) As vazantes dos rios têm sofrido alterações nos últimos anos? R: $e3t2p10',
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
                            groupValue: e3t2p10,
                            onChanged: (T) {
                              setState(() {
                                e3t2p10 = T;
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
                            groupValue: e3t2p10,
                            onChanged: (T) {
                              setState(() {
                                e3t2p10 = T;
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
                            groupValue: e3t2p10,
                            onChanged: (T) {
                              setState(() {
                                e3t2p10 = T;
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
                            groupValue: e3t2p10,
                            onChanged: (T) {
                              setState(() {
                                e3t2p10 = T;
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
                            groupValue: e3t2p10,
                            onChanged: (T) {
                              setState(() {
                                e3t2p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      '3 - SEMIÓTICA CORPORAL',
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
                        '3.1) Na comunidade há ocorrência de doenças intestinais? R: $e3t3p1',
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
                            groupValue: e3t3p1,
                            onChanged: (T) {
                              setState(() {
                                e3t3p1 = T;
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
                            groupValue: e3t3p1,
                            onChanged: (T) {
                              setState(() {
                                e3t3p1 = T;
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
                            groupValue: e3t3p1,
                            onChanged: (T) {
                              setState(() {
                                e3t3p1 = T;
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
                            groupValue: e3t3p1,
                            onChanged: (T) {
                              setState(() {
                                e3t3p1 = T;
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
                            groupValue: e3t3p1,
                            onChanged: (T) {
                              setState(() {
                                e3t3p1 = T;
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
                        '3.2) Na comunidade há ocorrência de doenças respiratórias? R: $e3t3p2',
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
                            groupValue: e3t3p2,
                            onChanged: (T) {
                              setState(() {
                                e3t3p2 = T;
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
                            groupValue: e3t3p2,
                            onChanged: (T) {
                              setState(() {
                                e3t3p2 = T;
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
                            groupValue: e3t3p2,
                            onChanged: (T) {
                              setState(() {
                                e3t3p2 = T;
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
                            groupValue: e3t3p2,
                            onChanged: (T) {
                              setState(() {
                                e3t3p2 = T;
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
                            groupValue: e3t3p2,
                            onChanged: (T) {
                              setState(() {
                                e3t3p2 = T;
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
                        '3.3) Na comunidade há ocorrência de doenças psicológicas?R: $e3t3p3',
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
                            groupValue: e3t3p3,
                            onChanged: (T) {
                              setState(() {
                                e3t3p3 = T;
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
                            groupValue: e3t3p3,
                            onChanged: (T) {
                              setState(() {
                                e3t3p3 = T;
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
                            groupValue: e3t3p3,
                            onChanged: (T) {
                              setState(() {
                                e3t3p3 = T;
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
                            groupValue: e3t3p3,
                            onChanged: (T) {
                              setState(() {
                                e3t3p3 = T;
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
                            groupValue: e3t3p3,
                            onChanged: (T) {
                              setState(() {
                                e3t3p3 = T;
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
                        '3.4) Na comunidade há ocorrência de doenças sexualmente transmissíveis? R: $e3t3p4',
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
                            groupValue: e3t3p4,
                            onChanged: (T) {
                              setState(() {
                                e3t3p4 = T;
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
                            groupValue: e3t3p4,
                            onChanged: (T) {
                              setState(() {
                                e3t3p4 = T;
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
                            groupValue: e3t3p4,
                            onChanged: (T) {
                              setState(() {
                                e3t3p4 = T;
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
                            groupValue: e3t3p4,
                            onChanged: (T) {
                              setState(() {
                                e3t3p4 = T;
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
                            groupValue: e3t3p4,
                            onChanged: (T) {
                              setState(() {
                                e3t3p4 = T;
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
                        '3.5) Na comunidade há ocorrência de doenças que diminuam a capacidade de locomoção?    R: $e3t3p5',
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
                            groupValue: e3t3p5,
                            onChanged: (T) {
                              setState(() {
                                e3t3p5 = T;
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
                            groupValue: e3t3p5,
                            onChanged: (T) {
                              setState(() {
                                e3t3p5 = T;
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
                            groupValue: e3t3p5,
                            onChanged: (T) {
                              setState(() {
                                e3t3p5 = T;
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
                            groupValue: e3t3p5,
                            onChanged: (T) {
                              setState(() {
                                e3t3p5 = T;
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
                            groupValue: e3t3p5,
                            onChanged: (T) {
                              setState(() {
                                e3t3p5 = T;
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
                        '3.6) Existem pessoas com doenças crônicas na comunidade?  R: $e3t3p6',
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
                            groupValue: e3t3p6,
                            onChanged: (T) {
                              setState(() {
                                e3t3p6 = T;
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
                            groupValue: e3t3p6,
                            onChanged: (T) {
                              setState(() {
                                e3t3p6 = T;
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
                            groupValue: e3t3p6,
                            onChanged: (T) {
                              setState(() {
                                e3t3p6 = T;
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
                            groupValue: e3t3p6,
                            onChanged: (T) {
                              setState(() {
                                e3t3p6 = T;
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
                            groupValue: e3t3p6,
                            onChanged: (T) {
                              setState(() {
                                e3t3p6 = T;
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
                        '3.7) Existem casos de suicídio na comunidade? R: $e3t3p7',
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
                            groupValue: e3t3p7,
                            onChanged: (T) {
                              setState(() {
                                e3t3p7 = T;
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
                            groupValue: e3t3p7,
                            onChanged: (T) {
                              setState(() {
                                e3t3p7 = T;
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
                            groupValue: e3t3p7,
                            onChanged: (T) {
                              setState(() {
                                e3t3p7 = T;
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
                            groupValue: e3t3p7,
                            onChanged: (T) {
                              setState(() {
                                e3t3p7 = T;
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
                            groupValue: e3t3p7,
                            onChanged: (T) {
                              setState(() {
                                e3t3p7 = T;
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
                        '3.8) Você considera que há obesidade na comunidade? R: $e3t3p8',
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
                            groupValue: e3t3p8,
                            onChanged: (T) {
                              setState(() {
                                e3t3p8 = T;
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
                            groupValue: e3t3p8,
                            onChanged: (T) {
                              setState(() {
                                e3t3p8 = T;
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
                            groupValue: e3t3p8,
                            onChanged: (T) {
                              setState(() {
                                e3t3p8 = T;
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
                            groupValue: e3t3p8,
                            onChanged: (T) {
                              setState(() {
                                e3t3p8 = T;
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
                            groupValue: e3t3p8,
                            onChanged: (T) {
                              setState(() {
                                e3t3p8 = T;
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
                        '3.9) A mortalidade infantil é um problema na comunidade? R: $e3t3p9',
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
                            groupValue: e3t3p9,
                            onChanged: (T) {
                              setState(() {
                                e3t3p9 = T;
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
                            groupValue: e3t3p9,
                            onChanged: (T) {
                              setState(() {
                                e3t3p9 = T;
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
                            groupValue: e3t3p9,
                            onChanged: (T) {
                              setState(() {
                                e3t3p9 = T;
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
                            groupValue: e3t3p9,
                            onChanged: (T) {
                              setState(() {
                                e3t3p9 = T;
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
                            groupValue: e3t3p9,
                            onChanged: (T) {
                              setState(() {
                                e3t3p9 = T;
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
                        '3.10) Você observa a diminuição na taxa de natalidade em sua família nos últimos 5 anos? R: $e3t3p10',
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
                            groupValue: e3t3p10,
                            onChanged: (T) {
                              setState(() {
                                e3t3p10 = T;
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
                            groupValue: e3t3p10,
                            onChanged: (T) {
                              setState(() {
                                e3t3p10 = T;
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
                            groupValue: e3t3p10,
                            onChanged: (T) {
                              setState(() {
                                e3t3p10 = T;
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
                            groupValue: e3t3p10,
                            onChanged: (T) {
                              setState(() {
                                e3t3p10 = T;
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
                            groupValue: e3t3p10,
                            onChanged: (T) {
                              setState(() {
                                e3t3p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Center(
                    child: Text(
                      '4 - SEMIÓTICA AMBIENTAL',
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
                        '4.1) O governo (federal, estadual, municipal) protege o meio ambiente da comunidade?  R: $e3t4p1',
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
                            groupValue: e3t4p1,
                            onChanged: (T) {
                              setState(() {
                                e3t4p1 = T;
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
                            groupValue: e3t4p1,
                            onChanged: (T) {
                              setState(() {
                                e3t4p1 = T;
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
                            groupValue: e3t4p1,
                            onChanged: (T) {
                              setState(() {
                                e3t4p1 = T;
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
                            groupValue: e3t4p1,
                            onChanged: (T) {
                              setState(() {
                                e3t4p1 = T;
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
                            groupValue: e3t4p1,
                            onChanged: (T) {
                              setState(() {
                                e3t4p1 = T;
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
                        '4.2) A comunidade procura recuperar as suas áreas degradadas? R: $e3t4p2',
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
                            groupValue: e3t4p2,
                            onChanged: (T) {
                              setState(() {
                                e3t4p2 = T;
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
                            groupValue: e3t4p2,
                            onChanged: (T) {
                              setState(() {
                                e3t4p2 = T;
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
                            groupValue: e3t4p2,
                            onChanged: (T) {
                              setState(() {
                                e3t4p2 = T;
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
                            groupValue: e3t4p2,
                            onChanged: (T) {
                              setState(() {
                                e3t4p2 = T;
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
                            groupValue: e3t4p2,
                            onChanged: (T) {
                              setState(() {
                                e3t4p2 = T;
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
                        '4.3) Há conflitos por motivações ambientais na sua comunidade? R: $e3t4p3',
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
                            groupValue: e3t4p3,
                            onChanged: (T) {
                              setState(() {
                                e3t4p3 = T;
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
                            groupValue: e3t4p3,
                            onChanged: (T) {
                              setState(() {
                                e3t4p3 = T;
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
                            groupValue: e3t4p3,
                            onChanged: (T) {
                              setState(() {
                                e3t4p3 = T;
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
                            groupValue: e3t4p3,
                            onChanged: (T) {
                              setState(() {
                                e3t4p3 = T;
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
                            groupValue: e3t4p3,
                            onChanged: (T) {
                              setState(() {
                                e3t4p3 = T;
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
                        '4.4) A ocupação desordenada na comunidade afeta o meio ambiente? R: $e3t4p4',
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
                            groupValue: e3t4p4,
                            onChanged: (T) {
                              setState(() {
                                e3t4p4 = T;
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
                            groupValue: e3t4p4,
                            onChanged: (T) {
                              setState(() {
                                e3t4p4 = T;
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
                            groupValue: e3t4p4,
                            onChanged: (T) {
                              setState(() {
                                e3t4p4 = T;
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
                            groupValue: e3t4p4,
                            onChanged: (T) {
                              setState(() {
                                e3t4p4 = T;
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
                            groupValue: e3t4p4,
                            onChanged: (T) {
                              setState(() {
                                e3t4p4 = T;
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
                        '4.5) A expansão/crescimento das cidades pode afetar o meio ambiente?  R: $e3t4p5',
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
                            groupValue: e3t4p5,
                            onChanged: (T) {
                              setState(() {
                                e3t4p5 = T;
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
                            groupValue: e3t4p5,
                            onChanged: (T) {
                              setState(() {
                                e3t4p5 = T;
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
                            groupValue: e3t4p5,
                            onChanged: (T) {
                              setState(() {
                                e3t4p5 = T;
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
                            groupValue: e3t4p5,
                            onChanged: (T) {
                              setState(() {
                                e3t4p5 = T;
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
                            groupValue: e3t4p5,
                            onChanged: (T) {
                              setState(() {
                                e3t4p5 = T;
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
                        '4.6) A construção de obras públicas (estradas, pontes, trapiches, cais e outros) pode ser prejudicial ao ambiente? R: $e3t4p6',
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
                            groupValue: e3t4p6,
                            onChanged: (T) {
                              setState(() {
                                e3t4p6 = T;
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
                            groupValue: e3t4p6,
                            onChanged: (T) {
                              setState(() {
                                e3t4p6 = T;
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
                            groupValue: e3t4p6,
                            onChanged: (T) {
                              setState(() {
                                e3t4p6 = T;
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
                            groupValue: e3t4p6,
                            onChanged: (T) {
                              setState(() {
                                e3t4p6 = T;
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
                            groupValue: e3t4p6,
                            onChanged: (T) {
                              setState(() {
                                e3t4p6 = T;
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
                        '4.7) A produção econômica afeta o meio ambiente? R: $e3t4p7',
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
                            groupValue: e3t4p7,
                            onChanged: (T) {
                              setState(() {
                                e3t4p7 = T;
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
                            groupValue: e3t4p7,
                            onChanged: (T) {
                              setState(() {
                                e3t4p7 = T;
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
                            groupValue: e3t4p7,
                            onChanged: (T) {
                              setState(() {
                                e3t4p7 = T;
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
                            groupValue: e3t4p7,
                            onChanged: (T) {
                              setState(() {
                                e3t4p7 = T;
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
                            groupValue: e3t4p7,
                            onChanged: (T) {
                              setState(() {
                                e3t4p7 = T;
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
                        '4.8) Você observa que houve aumento de desastres naturais? R: $e3t4p8',
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
                            groupValue: e3t4p8,
                            onChanged: (T) {
                              setState(() {
                                e3t4p8 = T;
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
                            groupValue: e3t4p8,
                            onChanged: (T) {
                              setState(() {
                                e3t4p8 = T;
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
                            groupValue: e3t4p8,
                            onChanged: (T) {
                              setState(() {
                                e3t4p8 = T;
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
                            groupValue: e3t4p8,
                            onChanged: (T) {
                              setState(() {
                                e3t4p8 = T;
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
                            groupValue: e3t4p8,
                            onChanged: (T) {
                              setState(() {
                                e3t4p8 = T;
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
                        '4.9) Você acredita em aquecimento global? R: $e3t4p9',
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
                            groupValue: e3t4p9,
                            onChanged: (T) {
                              setState(() {
                                e3t4p9 = T;
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
                            groupValue: e3t4p9,
                            onChanged: (T) {
                              setState(() {
                                e3t4p9 = T;
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
                            groupValue: e3t4p9,
                            onChanged: (T) {
                              setState(() {
                                e3t4p9 = T;
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
                            groupValue: e3t4p9,
                            onChanged: (T) {
                              setState(() {
                                e3t4p9 = T;
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
                            groupValue: e3t4p9,
                            onChanged: (T) {
                              setState(() {
                                e3t4p9 = T;
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
                        '4.10) Os problemas ambientais são permanentes e irreversíveis? R: $e3t4p10',
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
                            groupValue: e3t4p10,
                            onChanged: (T) {
                              setState(() {
                                e3t4p10 = T;
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
                            groupValue: e3t4p10,
                            onChanged: (T) {
                              setState(() {
                                e3t4p10 = T;
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
                            groupValue: e3t4p10,
                            onChanged: (T) {
                              setState(() {
                                e3t4p10 = T;
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
                            groupValue: e3t4p10,
                            onChanged: (T) {
                              setState(() {
                                e3t4p10 = T;
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
                            groupValue: e3t4p10,
                            onChanged: (T) {
                              setState(() {
                                e3t4p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text(
                      '5 - ATIVIDADE ECONÔMICA',
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
                        '5.1) Sua família usa produtos (cascas, ervas, plantas, raízes) retirados da floresta/mata/mangue? R: $e3t5p1',
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
                            groupValue: e3t5p1,
                            onChanged: (T) {
                              setState(() {
                                e3t5p1 = T;
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
                            groupValue: e3t5p1,
                            onChanged: (T) {
                              setState(() {
                                e3t5p1 = T;
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
                            groupValue: e3t5p1,
                            onChanged: (T) {
                              setState(() {
                                e3t5p1 = T;
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
                            groupValue: e3t5p1,
                            onChanged: (T) {
                              setState(() {
                                e3t5p1 = T;
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
                            groupValue: e3t5p1,
                            onChanged: (T) {
                              setState(() {
                                e3t5p1 = T;
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
                        '5.2) Sua família pesca para subsistência?  R: $e3t5p2',
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
                            groupValue: e3t5p2,
                            onChanged: (T) {
                              setState(() {
                                e3t5p2 = T;
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
                            groupValue: e3t5p2,
                            onChanged: (T) {
                              setState(() {
                                e3t5p2 = T;
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
                            groupValue: e3t5p2,
                            onChanged: (T) {
                              setState(() {
                                e3t5p2 = T;
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
                            groupValue: e3t5p2,
                            onChanged: (T) {
                              setState(() {
                                e3t5p2 = T;
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
                            groupValue: e3t5p2,
                            onChanged: (T) {
                              setState(() {
                                e3t5p2 = T;
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
                        '5.3) Sua família caça animais para subsistência?  R: $e3t5p3',
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
                            groupValue: e3t5p3,
                            onChanged: (T) {
                              setState(() {
                                e3t5p3 = T;
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
                            groupValue: e3t5p3,
                            onChanged: (T) {
                              setState(() {
                                e3t5p3 = T;
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
                            groupValue: e3t5p3,
                            onChanged: (T) {
                              setState(() {
                                e3t5p3 = T;
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
                            groupValue: e3t5p3,
                            onChanged: (T) {
                              setState(() {
                                e3t5p3 = T;
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
                            groupValue: e3t5p3,
                            onChanged: (T) {
                              setState(() {
                                e3t5p3 = T;
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
                        '5.4) Sua família cria animais para subsistência?  R: $e3t5p4',
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
                            groupValue: e3t5p4,
                            onChanged: (T) {
                              setState(() {
                                e3t5p4 = T;
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
                            groupValue: e3t5p4,
                            onChanged: (T) {
                              setState(() {
                                e3t5p4 = T;
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
                            groupValue: e3t5p4,
                            onChanged: (T) {
                              setState(() {
                                e3t5p4 = T;
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
                            groupValue: e3t5p4,
                            onChanged: (T) {
                              setState(() {
                                e3t5p4 = T;
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
                            groupValue: e3t5p4,
                            onChanged: (T) {
                              setState(() {
                                e3t5p4 = T;
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
                        '5.5) Sua família planta para subsistência?  R: $e3t5p5',
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
                            groupValue: e3t5p5,
                            onChanged: (T) {
                              setState(() {
                                e3t5p5 = T;
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
                            groupValue: e3t5p5,
                            onChanged: (T) {
                              setState(() {
                                e3t5p5 = T;
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
                            groupValue: e3t5p5,
                            onChanged: (T) {
                              setState(() {
                                e3t5p5 = T;
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
                            groupValue: e3t5p5,
                            onChanged: (T) {
                              setState(() {
                                e3t5p5 = T;
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
                            groupValue: e3t5p5,
                            onChanged: (T) {
                              setState(() {
                                e3t5p5 = T;
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
                        '5.6) Sua família extrai madeira para subsistência? R: $e3t5p6',
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
                            groupValue: e3t5p6,
                            onChanged: (T) {
                              setState(() {
                                e3t5p6 = T;
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
                            groupValue: e3t5p6,
                            onChanged: (T) {
                              setState(() {
                                e3t5p6 = T;
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
                            groupValue: e3t5p6,
                            onChanged: (T) {
                              setState(() {
                                e3t5p6 = T;
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
                            groupValue: e3t5p6,
                            onChanged: (T) {
                              setState(() {
                                e3t5p6 = T;
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
                            groupValue: e3t5p6,
                            onChanged: (T) {
                              setState(() {
                                e3t5p6 = T;
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
                        '5.7) Sua família explora minerais (pedras, areias, piçarra, garimpo)? R: $e3t5p7',
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
                            groupValue: e3t5p7,
                            onChanged: (T) {
                              setState(() {
                                e3t5p7 = T;
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
                            groupValue: e3t5p7,
                            onChanged: (T) {
                              setState(() {
                                e3t5p7 = T;
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
                            groupValue: e3t5p7,
                            onChanged: (T) {
                              setState(() {
                                e3t5p7 = T;
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
                            groupValue: e3t5p7,
                            onChanged: (T) {
                              setState(() {
                                e3t5p7 = T;
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
                            groupValue: e3t5p7,
                            onChanged: (T) {
                              setState(() {
                                e3t5p7 = T;
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
                        '5.8) Sua família recebe benefícios sociais (bolsa família, bolsa floresta, defeso e outros)?  R: $e3t5p8',
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
                            groupValue: e3t5p8,
                            onChanged: (T) {
                              setState(() {
                                e3t5p8 = T;
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
                            groupValue: e3t5p8,
                            onChanged: (T) {
                              setState(() {
                                e3t5p8 = T;
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
                            groupValue: e3t5p8,
                            onChanged: (T) {
                              setState(() {
                                e3t5p8 = T;
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
                            groupValue: e3t5p8,
                            onChanged: (T) {
                              setState(() {
                                e3t5p8 = T;
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
                            groupValue: e3t5p8,
                            onChanged: (T) {
                              setState(() {
                                e3t5p8 = T;
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
                        '5.9) Sua família sobrevive de atividade remunerada/comércio? R: $e3t5p9',
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
                            groupValue: e3t5p9,
                            onChanged: (T) {
                              setState(() {
                                e3t5p9 = T;
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
                            groupValue: e3t5p9,
                            onChanged: (T) {
                              setState(() {
                                e3t5p9 = T;
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
                            groupValue: e3t5p9,
                            onChanged: (T) {
                              setState(() {
                                e3t5p9 = T;
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
                            groupValue: e3t5p9,
                            onChanged: (T) {
                              setState(() {
                                e3t5p9 = T;
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
                            groupValue: e3t5p9,
                            onChanged: (T) {
                              setState(() {
                                e3t5p9 = T;
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
                        '5.10) Sua família ganha pelo menos um salário mínimo mensal? R: $e3t5p10',
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
                            groupValue: e3t5p10,
                            onChanged: (T) {
                              setState(() {
                                e3t5p10 = T;
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
                            groupValue: e3t5p10,
                            onChanged: (T) {
                              setState(() {
                                e3t5p10 = T;
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
                            groupValue: e3t5p10,
                            onChanged: (T) {
                              setState(() {
                                e3t5p10 = T;
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
                            groupValue: e3t5p10,
                            onChanged: (T) {
                              setState(() {
                                e3t5p10 = T;
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
                            groupValue: e3t5p10,
                            onChanged: (T) {
                              setState(() {
                                e3t5p10 = T;
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
                  margin: EdgeInsets.only(
                      right: 10, left: 10, top: 10, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      '6 - CIDADANIA E RELAÇÕES DE PODER',
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
                        '6.1) Há prática de trabalho infantil na comunidade? R: $e3t6p1',
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
                            groupValue: e3t6p1,
                            onChanged: (T) {
                              setState(() {
                                e3t6p1 = T;
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
                            groupValue: e3t6p1,
                            onChanged: (T) {
                              setState(() {
                                e3t6p1 = T;
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
                            groupValue: e3t6p1,
                            onChanged: (T) {
                              setState(() {
                                e3t6p1 = T;
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
                            groupValue: e3t6p1,
                            onChanged: (T) {
                              setState(() {
                                e3t6p1 = T;
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
                            groupValue: e3t6p1,
                            onChanged: (T) {
                              setState(() {
                                e3t6p1 = T;
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
                        '6.2) Há casos de crianças/jovens que abandonam a escola? R: $e3t6p2',
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
                            groupValue: e3t6p2,
                            onChanged: (T) {
                              setState(() {
                                e3t6p2 = T;
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
                            groupValue: e3t6p2,
                            onChanged: (T) {
                              setState(() {
                                e3t6p2 = T;
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
                            groupValue: e3t6p2,
                            onChanged: (T) {
                              setState(() {
                                e3t6p2 = T;
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
                            groupValue: e3t6p2,
                            onChanged: (T) {
                              setState(() {
                                e3t6p2 = T;
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
                            groupValue: e3t6p2,
                            onChanged: (T) {
                              setState(() {
                                e3t6p2 = T;
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
                        '6.3) Há casos de pedofilia/exploração sexual na comunidade? Há casos de trabalho escravo na comunidade?  R: $e3t6p3',
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
                            groupValue: e3t6p3,
                            onChanged: (T) {
                              setState(() {
                                e3t6p3 = T;
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
                            groupValue: e3t6p3,
                            onChanged: (T) {
                              setState(() {
                                e3t6p3 = T;
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
                            groupValue: e3t6p3,
                            onChanged: (T) {
                              setState(() {
                                e3t6p3 = T;
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
                            groupValue: e3t6p3,
                            onChanged: (T) {
                              setState(() {
                                e3t6p3 = T;
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
                            groupValue: e3t6p3,
                            onChanged: (T) {
                              setState(() {
                                e3t6p3 = T;
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
                        '6.4) Há casos de trabalho escravo na comunidade?  R: $e3t6p4',
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
                            groupValue: e3t6p4,
                            onChanged: (T) {
                              setState(() {
                                e3t6p4 = T;
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
                            groupValue: e3t6p4,
                            onChanged: (T) {
                              setState(() {
                                e3t6p4 = T;
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
                            groupValue: e3t6p4,
                            onChanged: (T) {
                              setState(() {
                                e3t6p4 = T;
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
                            groupValue: e3t6p4,
                            onChanged: (T) {
                              setState(() {
                                e3t6p4 = T;
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
                            groupValue: e3t6p4,
                            onChanged: (T) {
                              setState(() {
                                e3t6p4 = T;
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
                        '6.5) Há pessoas analfabetas/semi-analfabetas na comunidade? R: $e3t6p5',
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
                            groupValue: e3t6p5,
                            onChanged: (T) {
                              setState(() {
                                e3t6p5 = T;
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
                            groupValue: e3t6p5,
                            onChanged: (T) {
                              setState(() {
                                e3t6p5 = T;
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
                            groupValue: e3t6p5,
                            onChanged: (T) {
                              setState(() {
                                e3t6p5 = T;
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
                            groupValue: e3t6p5,
                            onChanged: (T) {
                              setState(() {
                                e3t6p5 = T;
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
                            groupValue: e3t6p5,
                            onChanged: (T) {
                              setState(() {
                                e3t6p5 = T;
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
                        '6.6) Há casos de ameaça de violência a lideranças e agentes públicos na comunidade? R: $e3t6p6',
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
                            groupValue: e3t6p6,
                            onChanged: (T) {
                              setState(() {
                                e3t6p6 = T;
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
                            groupValue: e3t6p6,
                            onChanged: (T) {
                              setState(() {
                                e3t6p6 = T;
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
                            groupValue: e3t6p6,
                            onChanged: (T) {
                              setState(() {
                                e3t6p6 = T;
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
                            groupValue: e3t6p6,
                            onChanged: (T) {
                              setState(() {
                                e3t6p6 = T;
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
                            groupValue: e3t6p6,
                            onChanged: (T) {
                              setState(() {
                                e3t6p6 = T;
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
                        '6.7) Os idosos têm acesso ao sistema público de previdência?  R: $e3t6p7',
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
                            groupValue: e3t6p7,
                            onChanged: (T) {
                              setState(() {
                                e3t6p7 = T;
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
                            groupValue: e3t6p7,
                            onChanged: (T) {
                              setState(() {
                                e3t6p7 = T;
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
                            groupValue: e3t6p7,
                            onChanged: (T) {
                              setState(() {
                                e3t6p7 = T;
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
                            groupValue: e3t6p7,
                            onChanged: (T) {
                              setState(() {
                                e3t6p7 = T;
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
                            groupValue: e3t6p7,
                            onChanged: (T) {
                              setState(() {
                                e3t6p7 = T;
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
                        '6.8) A comunidade participa nas ações promovidas por associações ou organizações semelhantes? R: $e3t6p8',
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
                            groupValue: e3t6p8,
                            onChanged: (T) {
                              setState(() {
                                e3t6p8 = T;
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
                            groupValue: e3t6p8,
                            onChanged: (T) {
                              setState(() {
                                e3t6p8 = T;
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
                            groupValue: e3t6p8,
                            onChanged: (T) {
                              setState(() {
                                e3t6p8 = T;
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
                            groupValue: e3t6p8,
                            onChanged: (T) {
                              setState(() {
                                e3t6p8 = T;
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
                            groupValue: e3t6p8,
                            onChanged: (T) {
                              setState(() {
                                e3t6p8 = T;
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
                        '6.9) Há casos de discriminação de gênero (mulheres, LGBTQ e outros) na comunidade?  R: $e3t6p9',
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
                            groupValue: e3t6p9,
                            onChanged: (T) {
                              setState(() {
                                e3t6p9 = T;
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
                            groupValue: e3t6p9,
                            onChanged: (T) {
                              setState(() {
                                e3t6p9 = T;
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
                            groupValue: e3t6p9,
                            onChanged: (T) {
                              setState(() {
                                e3t6p9 = T;
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
                            groupValue: e3t6p9,
                            onChanged: (T) {
                              setState(() {
                                e3t6p9 = T;
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
                            groupValue: e3t6p9,
                            onChanged: (T) {
                              setState(() {
                                e3t6p9 = T;
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
                        '6.10) Há casos de preconceito étnico-racial na comunidade? R: $e3t6p10',
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
                            groupValue: e3t6p10,
                            onChanged: (T) {
                              setState(() {
                                e3t6p10 = T;
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
                            groupValue: e3t6p10,
                            onChanged: (T) {
                              setState(() {
                                e3t6p10 = T;
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
                            groupValue: e3t6p10,
                            onChanged: (T) {
                              setState(() {
                                e3t6p10 = T;
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
                            groupValue: e3t6p10,
                            onChanged: (T) {
                              setState(() {
                                e3t6p10 = T;
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
                            groupValue: e3t6p10,
                            onChanged: (T) {
                              setState(() {
                                e3t6p10 = T;
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
                      print('Salvo');
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
