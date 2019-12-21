import 'package:flutter/material.dart';

class question extends StatefulWidget {
  @override
  _question_state createState() => _question_state();
}

class _question_state extends State<question> {
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

class Eixo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: <Widget>[
      Container(
        color: Colors.blue,
        height: 75,
        child: Center(
          child: new Text(
            "EIXO: SUSTENTABILIDADES E BOM VIVER",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        color: Colors.white,
        height: 75,
        margin: EdgeInsets.all(2.0),
        padding: EdgeInsets.all(6),
        child: Center(
          child: new Text(
            "Marque as questões/indicadores considerando a escala no qual 0 é nunca e 5 é sempre",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Container(
          height: 50,
          margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              '1 - QUALIDADE DA MORADIA',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
      Container(
        margin: EdgeInsets.only(right: 10, left: 10, top: 2, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                '1.1) A estrutura de sua casa é segura?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                children: <Widget>[
                  new Radio(value: false, onChanged: (bool value) => {}),
                  new Text("0"),
                  new Padding(padding: EdgeInsets.all(7)),
                  new Radio(
                    value: false,
                    onChanged: (bool value) => {},
                  ),
                  new Text("1"),
                  new Padding(padding: EdgeInsets.all(7)),
                  new Radio(
                    value: false,
                    onChanged: (bool value) => {},
                  ),
                  new Text("2"),
                  Padding(padding: EdgeInsets.all(7)),
                  new Radio(
                    value: false,
                    onChanged: (bool value) => {},
                  ),
                  new Text("3"),
                  new Padding(padding: EdgeInsets.all(7)),
                  new Radio(
                    value: false,
                    onChanged: (bool value) => {},
                  ),
                  new Text("4"),
                ],
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}

class Eixo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 50,
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
        ],
      ),
    );
  }
}

class Eixo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: 50,
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
        ],
      ),
    );
  }
}
