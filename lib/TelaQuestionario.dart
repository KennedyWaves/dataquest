import 'package:flutter/material.dart';
import 'pessoaScreen.dart';
import 'eixoScreen.dart';
import 'content.dart';

Content content;
@override
class TelaDeQuestionario extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}
///
//TAB BAR VIEW
class QuestionState extends State<TelaDeQuestionario>
{
  QuestionState(){
    content = new Content();
    Content.entrevista.start();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulário'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Social',
              ),
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
            PessoaScreen(),
            EixoScreen(0),
            EixoScreen(1),
            EixoScreen(2,true),
          ],
        ),
      ),
    );
  }
}
