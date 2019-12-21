import 'package:flutter/material.dart';

@override
class question extends StatefulWidget {
  @override
  _question_state createState() => _question_state();
}

// Declare this variable
int q1p1 = 0;

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

class Eixo1 extends StatefulWidget {
  @override
  _Eixo1State createState() => new _Eixo1State();
}

class _Eixo1State extends State<Eixo1>
    with AutomaticKeepAliveClientMixin<Eixo1> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
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
            "Marque as questões/indicadores considerando a escala no qual 0 é nunca e 4 é sempre",
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, top: 15, left: 15),
              child: Text(
                '1.1) A estrutura de sua casa é segura? R $q1p1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15, top: 0, left: 0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: q1p1,
                    onChanged: (T) {
                      print(T);
                      setState(() {
                        q1p1 = T;
                      });
                    },
                  ),
                  new Text(
                    '0',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: q1p1,
                    onChanged: (T) {
                      print(T);
                      setState(() {
                        q1p1 = T;
                      });
                    },
                  ),
                  new Text(
                    '1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: q1p1,
                    onChanged: (T) {
                      print(T);
                      setState(() {
                        q1p1 = T;
                      });
                    },
                  ),
                  new Text(
                    '2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 3,
                    groupValue: q1p1,
                    onChanged: (T) {
                      print(T);
                      setState(() {
                        q1p1 = T;
                      });
                    },
                  ),
                  new Text(
                    '3',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  new Radio(
                    value: 4,
                    groupValue: q1p1,
                    onChanged: (T) {
                      print(T);
                      setState(() {
                        q1p1 = T;
                      });
                    },
                  ),
                  new Text(
                    '4',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]));
  }

  bool get wantKeepAlive => true;
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
