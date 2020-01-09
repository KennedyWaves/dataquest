import 'package:flutter/material.dart';

import 'content.dart';

class PessoaScreen extends StatefulWidget {
  @override
  State createState() => new _PessoaState();
}

class _PessoaState extends State<PessoaScreen>
    with AutomaticKeepAliveClientMixin<PessoaScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final focus = FocusNode();

  //VARIAVEIS E MÉTODOS DE INTERFACE
  var _genero = [
    'Masculino',
    'Feminino',
    'Transgênero',
    'Cisgênero',
    'Transexual',
    'Travesti',
    ''
  ];
  String _selectedGenero = '';
  List<String> _formacao = [
    'Fundamental incompleto',
    'Fundamental completo',
    'Médio incompleto',
    'Médio completo',
    'Superior incompleto',
    'Superior completo',
    'Pós-graduação incompleta',
    'Pós-graduação',
    ''
  ];
  String _selectedFormacao = '';
  String _dataNascimentoText = "01/01/1980";

  void _generoOnDropDown(String value) {
    setState(() {
      this._selectedGenero = value;
    });
    Content.entrevista.pessoa.genero = value;
    //print(Content.entrevista.pessoa.genero);
  }

  void _formacaoOnDropDown(String value) {
    setState(() {
      this._selectedFormacao = value;
    });
    Content.entrevista.pessoa.formacao = value;
    //print(Content.entrevista.pessoa.formacao);
  }

  var dnController = new TextEditingController();
  Scaffold buildPessoa() {
    //adiciona o cabeçalho e informações básicas
    List<Widget> result = <Widget>[
      //header
           //form
      new Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
          child: Center(
              child: new Form(
                key: _formKey,
                autovalidate: true,
                child: new Column(
                  children: <Widget>[
                    // ENTRADA NOME
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        //hintText: "Nome Completo",
                        labelText: 'Nome completo',
                        //border: InputBorder.none
                      ),
                      onChanged: (String value) {
                        setState(() {
                          Content.entrevista.pessoa.nome = value;
                          //print(Content.entrevista.pessoa.nome);
                        });
                      },
                      //controller: controller,
                    ),
                    //ENTRADA IDADE
                    InkWell(
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: Content.entrevista.pessoa.dataNascimento == null
                                ? DateTime.now()
                                : Content.entrevista.pessoa.dataNascimento,
                            firstDate: DateTime(1925),
                            lastDate: DateTime(2019),
                            locale: Locale("pt"))
                            .then((date) {
                          setState(() {
                            Content.entrevista.pessoa.dataNascimento = date;
                            _dataNascimentoText =
                                Content.entrevista.pessoa.dataNascimentoText();
                            dnController.text = _dataNascimentoText;
                          });
                        }); // Call Function that has showDatePicker()
                      },
                      child: IgnorePointer(
                        child: new TextFormField(
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
                    //ENDRADA GENERO
                    new FormField(builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.wc),
                          labelText: 'Gênero',
                        ),
                        isEmpty: _selectedGenero == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _selectedGenero,
                            isDense: true,
                            onChanged: (String newValueSelected) {
                              // Your code to execute, when a menu item is selected from drop down
                              _generoOnDropDown(newValueSelected);
                            },
                            items: _genero.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    }),
                    // ENTRADA ATIVIDADE LABORAL
                    new TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.work),
                          //hintText: "Nome Completo",
                          labelText: 'Atividade laboral',
                          //border: InputBorder.none
                        ),
                        onChanged: (String value) {
                          setState(() {
                            Content.entrevista.pessoa.trabalho = value;
                            //print(Content.entrevista.pessoa.trabalho);
                          });
                        }
                      //controller: controller,
                    ),
                    // ENTRADA FORMAÇÃO
                    new FormField(builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.school),
                          labelText: 'Formação',
                        ),
                        isEmpty: _selectedFormacao == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _selectedFormacao,
                            isDense: true,
                            onChanged: (String newValueSelected) {
                              // Your code to execute, when a menu item is selected from drop down
                              _formacaoOnDropDown(newValueSelected);
                            },
                            items: _formacao.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    }),
                    //ENTRADA LOCALIDADE
                    TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.place),
                          //hintText: "Nome Completo",
                          labelText: 'Localidade',
                          //border: InputBorder.none
                        ),
                        onChanged: (String value) {
                          setState(() {
                            Content.entrevista.pessoa.localidade = value;
                            //print(Content.entrevista.pessoa.localidade);
                          });
                        }
                      //controller: controller,
                    )
                  ],
                ),
              ))),
    ];

    return Scaffold(body: Center(child: ListView(children: result)));
  }

  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildPessoa();
  }

  bool get wantKeepAlive => true;
  
}
