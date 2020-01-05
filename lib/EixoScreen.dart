import 'package:dataquest/questionario.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class EixoScreen extends StatefulWidget {
  final Questionario initialData;

  EixoScreen(this.initialData);

  @override
  State createState() => new _EixoState(initialData);
}

class _EixoState extends State<EixoScreen>
    with AutomaticKeepAliveClientMixin<EixoScreen> {
  Questionario data;

  _EixoState(this.data);

  //VARIAVEIS E MÉTODOS DE INTERFACE
  var _genero = [
    'Gênero',
    'Masculino',
    'Feminino',
    'Transgênero',
    'Cisgênero',
    'Transexual',
    'Travesti'
  ];
  String _selectedGenero = 'Gênero';
  List<String> _formacao = [
    'Formação',
    'Fundamental incompleto',
    'Fundamental completo',
    'Médio incompleto',
    'Médio completo',
    'Superior incompleto',
    'Superior completo',
    'Pós-graduação incompleta',
    'Pós-graduação'
  ];
  String _selectedFormacao = "Formação";
  String _dataNascimentoText = "01/01/1980";

  void _generoOnDropDown(String value) {
    setState(() {
      this._selectedGenero = value;
    });
    data.pessoa.genero = value;
    print(data.pessoa.genero);
  }

  void _formacaoOnDropDown(String value) {
    setState(() {
      this._selectedFormacao = value;
    });
    data.pessoa.formacao = value;
    print(data.pessoa.formacao);
  }

  var dnController = new TextEditingController();

  //constrói a tela do questionário/eixo
  Scaffold buildEixo() {
    //adiciona o cabeçalho e informações básicas
    List<Widget> result = <Widget>[
      //header
      new Container(
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
          child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                //hintText: "Nome Completo",
                labelText: 'Nome completo',
                //border: InputBorder.none
              ),
              onChanged: (String value) {
                setState(() {
                  data.pessoa.nome = value;
                  print(data.pessoa.nome);
                });
              }
            //controller: controller,
          ),
        ),
      ),
      //ENTRADA IDADE
      Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
          child: Center(
            child: InkWell(
              onTap: () {
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
                    _dataNascimentoText = data.pessoa.dataNascimentoText();
                    dnController.text = _dataNascimentoText;
                  });
                }); // Call Function that has showDatePicker()
              },
              child: IgnorePointer(
                child: new TextField(
                  controller: dnController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    //hintText: "Nome Completo",
                    labelText: 'Data de nascimento',
                    //border: InputBorder.none
                  ),
                ),
              ),
            ),
          )),

      //ENDRADA GENERO
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: DropdownButton<String>(
            items: _genero.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              // Your code to execute, when a menu item is selected from drop down
              _generoOnDropDown(newValueSelected);
            },
            value: _selectedGenero,
          ),
          //Text(controller.text)
        ),
      ),
      // ENTRADA ATIVIDADE LABORAL
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.work),
                //hintText: "Nome Completo",
                labelText: 'Atividade laboral',
                //border: InputBorder.none
              ),
              onChanged: (String value) {
                setState(() {
                  data.pessoa.trabalho = value;
                  print(data.pessoa.trabalho);
                });
              }
            //controller: controller,
          ),
        ),
      ),
      // ENTRADA FORMAÇÃO
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child: DropdownButton<String>(
            items: _formacao.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              // Your code to execute, when a menu item is selected from drop down
              _formacaoOnDropDown(newValueSelected);
            },
            value: _selectedFormacao,
          ),

        ),
      ),
      // ENTRADA LOCAlIDADE
      Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child:
          TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.place),
                //hintText: "Nome Completo",
                labelText: 'Localidade',
                //border: InputBorder.none
              ),
              onChanged: (String value) {
                setState(() {
                  data.pessoa.localidade = value;
                  print(data.pessoa.localidade);
                });
              }
            //controller: controller,
          ),
          //Text(controller.text)
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
    ];
    for (int x = 0; x < data.tema.length; x++) {
      result.add(buildTema(x));
    }

    result.add(
      new Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Center(
          child:
          TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.edit),
                //hintText: "Nome Completo",
                labelText: 'Observações',
                //border: InputBorder.none
              ),
              onChanged: (String value) {
                setState(() {
                  data.pessoa.observacoes = value;
                  print(data.pessoa.observacoes);
                });
              }
            //controller: controller,
          ),
        ),
      ),
    );

    result.add(
      Container(
        child: Center(
          child: RaisedButton.icon(
            onPressed: () {
              print("running");
              Questionario eixo = data;
              eixo.end();
              String csv = Questionario.toCsv(eixo, ";");
              Utils.write(csv,
                  "eixo1_${Utils.getInitials(eixo.pessoa.nome)}_${Utils
                      .getInitials(eixo.pessoa.trabalho)}_${eixo.pessoa
                      .dataNascimentoText()}_;.csv")
                  .then(Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("Questionário salvo!!"),
              )))
                  .catchError(Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("erro ao salvar questionário!!!!!!"),
                backgroundColor: Color.fromRGBO(200, 0, 0, 1),
              )));
            },
            icon: Icon(Icons.save),
            label: Text('Salvar Formulário'),
            color: Colors.amber,
          ),
        ),
      ),
    );
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
          color: data.tema[index].cor,
        ),
        child: Center(
          child: Text(
            data.tema[index].nome,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )));
    for (int x = 0; x < data.tema[index].questao.length; x++) {
      result.add(buildPergunta("${index + 1}.${x + 1})", index, x));
    }
    return new Column(children: result);
  }

  Container buildPergunta(String label, int indexTema, int indexPergunta) {
    return new Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
      decoration: BoxDecoration(
        color: data.tema[indexTema].corPergunta,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
            child: Text(
              '$label ${data.tema[indexTema].questao[indexPergunta]}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Radio(
                  value: 0,
                  groupValue:
                  data.tema[indexTema].questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      data.tema[indexTema].questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '0',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 1,
                  groupValue:
                  data.tema[indexTema].questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      data.tema[indexTema].questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '1',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 2,
                  groupValue:
                  data.tema[indexTema].questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      data.tema[indexTema].questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '2',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 3,
                  groupValue:
                  data.tema[indexTema].questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      data.tema[indexTema].questao[indexPergunta].resposta = T;
                    });
                  },
                ),
                new Text(
                  '3',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                new Radio(
                  value: 4,
                  groupValue:
                  data.tema[indexTema].questao[indexPergunta].resposta,
                  onChanged: (T) {
                    setState(() {
                      data.tema[indexTema].questao[indexPergunta].resposta = T;
                    });
                  },
                ),
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
