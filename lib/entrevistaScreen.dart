import 'package:flutter/material.dart';

import 'content.dart';
import 'eixoScreen.dart';
import 'pessoaScreen.dart';

Content content;
@override
class EntrevistaScreen extends StatefulWidget {
  @override
  EntrevistaState createState() => EntrevistaState();
}
///
//TAB BAR VIEW
class EntrevistaState extends State<EntrevistaScreen> {
  EntrevistaState() {
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
