import 'package:flutter/material.dart';

import 'content.dart';
import 'homeScreen.dart';
import 'utils.dart';

class EixoScreen extends StatefulWidget {
  final int eixoIndex;
  final bool createSave;

  EixoScreen(this.eixoIndex, [this.createSave]);

  @override
  State createState() => new _EixoState(eixoIndex, createSave);
}

class _EixoState extends State<EixoScreen>
    with AutomaticKeepAliveClientMixin<EixoScreen> {
  int eixoIndex;
  bool createSave;

  _EixoState(this.eixoIndex, [this.createSave]);

  //constrói a tela do questionário/eixo
  Scaffold buildEixo() {
    createSave = createSave ?? false;
    //adiciona o cabeçalho e informações básicas
    List<Widget> result = <Widget>[
      //header
      new Container(
        color: Colors.blue,
        height: 75,
        child: Center(
          child: new Text(
            Content.entrevista.eixo[eixoIndex].toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
      //form

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
    ];
    for (int x = 0; x < Content.entrevista.eixo[eixoIndex].tema.length; x++) {
      result.add(buildTema(x));
    }

    result.add(
      new Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.edit),
                //hintText: "Nome Completo",
                labelText: 'Observações',
                //border: InputBorder.none
              ),
              onChanged: (String value) {
                setState(() {
                  Content.entrevista.eixo[eixoIndex].observacoes = value;
                });
              }
              //controller: controller,
              ),
        ),
      ),
    );
    if (createSave) {
      result.add(
        Container(
          child: Center(
            child: RaisedButton.icon(
              onPressed: () {
                //print("running");
                Content.entrevista.end();
                String csv = Content.entrevista.toCsv(";");
                Utils.write(csv,
                        "${Utils.getInitials(Content.entrevista.pessoa.nome)}_${Utils.getInitials(Content.entrevista.pessoa.trabalho)}_${Content.entrevista.pessoa.dataNascimentoText()}_;.csv")
                    .then((bool value) {
                  if (value) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Questionário salvo!!"),
                    ));
                  } else {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(
                        "erro ao salvar questionário!!!!!!",
                        style: TextStyle(color: Colors.red),
                      ),
                      backgroundColor: Color.fromRGBO(200, 0, 0, 1),
                    ));
                  }
                });
              },
              icon: Icon(Icons.save),
              label: Text('Salvar Formulário'),
              color: Colors.amber,
            ),
          ),
        ),
      );
      result.add(new Padding(
        padding: EdgeInsets.only(bottom: 40),
      ));
      result.add(
        Container(
          child: Center(
            child: RaisedButton.icon(
              onPressed: () {
                Content.reset();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home', (Route<dynamic> route) => false);
              },
              icon: Icon(Icons.power_settings_new),
              label: Text('PÁGINA INICIAL'),
              color: Colors.amber,
            ),
          ),
        ),
      );
    }
    result.add(new Padding(
      padding: EdgeInsets.only(bottom: 20),
    ));
    //for para percorrer temas
    //somar temas com a lista final;
    //result += buildTema(data.tema[0],null);
    return Scaffold(body: Center(child: ListView(children: result)));
  }

  Column buildTema(int index) {
    //constói o tema
    List<Widget> result = <Widget>[];
    //header
    result.add(new Container(
        height: 50,
        margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Content.entrevista.eixo[eixoIndex].tema[index].cor,
        ),
        child: Center(
          child: Text(
            Content.entrevista.eixo[eixoIndex].tema[index].nome,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )));
    for (int x = 0;
    x < Content.entrevista.eixo[eixoIndex].tema[index].questao.length;
    x++) {
      result.add(buildPergunta("${index + 1}.${x + 1})", index, x));
    }
    return new Column(children: result);
  }

  Container buildPergunta(String label, int indexTema, int indexPergunta) {
    return new Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
      decoration: BoxDecoration(
        color: Content.entrevista.eixo[eixoIndex].tema[indexTema].corPergunta,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
            child: Text(
              '$label ${Content.entrevista.eixo[eixoIndex].tema[indexTema].questao[indexPergunta]}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Radio(
                  value: 0,
                  groupValue: Content.entrevista.eixo[eixoIndex].tema[indexTema]
                      .questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      Content.entrevista.eixo[eixoIndex].tema[indexTema]
                          .questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '0',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 1,
                  groupValue: Content.entrevista.eixo[eixoIndex].tema[indexTema]
                      .questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      Content.entrevista.eixo[eixoIndex].tema[indexTema]
                          .questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '1',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 2,
                  groupValue: Content.entrevista.eixo[eixoIndex].tema[indexTema]
                      .questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      Content.entrevista.eixo[eixoIndex].tema[indexTema]
                          .questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '2',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 3,
                  groupValue: Content.entrevista.eixo[eixoIndex].tema[indexTema]
                      .questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      Content.entrevista.eixo[eixoIndex].tema[indexTema]
                          .questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '3',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 4,
                  groupValue: Content.entrevista.eixo[eixoIndex].tema[indexTema]
                      .questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      Content.entrevista.eixo[eixoIndex].tema[indexTema]
                          .questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '4',
                  style: new TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildEixo();
  }

  bool get wantKeepAlive => true;
}
