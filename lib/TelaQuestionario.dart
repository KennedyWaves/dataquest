import 'package:flutter/material.dart';

import 'EixoScreen.dart';
import 'content.dart';

@override
class TelaDeQuestionario extends StatefulWidget {
  @override
  QuestionState createState() => QuestionState();
}

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
            EixoScreen(content.eixo[0]),
            EixoScreen(content.eixo[1]),
            EixoScreen(content.eixo[2]),
          ],
        ),
      ),
    );
  }
}
