import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'TelaQuestionario.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  static bool testbool = false;
  List<Widget> _widgetOptions;
  static List<Widget> _questsOutbox;
  static List<Widget> _questsList;
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void populateQuestsOutbox() {
    _questsOutbox = <Widget>[];
    _questsOutbox.add(new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("Fulano Siclano da Silva")),
          new Checkbox(
              value: testbool,
              onChanged: (bool value) {
                setState(() {
                  testbool = value;
                });
              })
        ],
      ),
    ));
    _questsOutbox.add(new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("Beutrano Beutrame da Silva")),
          new Checkbox(value: true, onChanged: (bool value) {})
        ],
      ),
    ));
    _questsOutbox.add(new ListTile(
      onTap: null,
      title: new Row(
        children: <Widget>[
          new Expanded(child: new Text("John Lorem Doe")),
          new Checkbox(value: true, onChanged: (bool value) {})
        ],
      ),
    ));
  }

  void populateWidgetOptions() {
    _widgetOptions = <Widget>[];
    _widgetOptions.add(new Scaffold(
      body:
          new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(left: 20,top: 40),
            child: new Text(
              '"INDICADORES ANTRÓPICOS"\n\nDataQuest 0.1 - PROCAD-AMAZÔNIA\n\nDesenvolvido por Bel. Kennedy Souza e Bel. Igor Aviz\nCordenação: Prof. Dr. Marcos Seruffo\n\nUniversidade Federal do Pará',
              style: new TextStyle(fontSize: 14,color: Colors.grey),
            ),
          ),
          new Center(child:
          new Padding(
            padding: EdgeInsets.all(20),
            child: new Text(
              'Toque em + para iniciar um novo questionário.',
              style: optionStyle,
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TelaDeQuestionario()))
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    ));
    _widgetOptions.add(new Scaffold(
      body: new Padding(
          padding: EdgeInsets.all(5),
          child: new ListView(children: _questsOutbox)),
    ));
  }

  void askPermission() async {
    PermissionStatus status = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (status != PermissionStatus.granted) {
      await PermissionHandler().requestPermissions([PermissionGroup.storage]);
    }
  }

  @override
  Widget build(BuildContext context) {
    populateQuestsOutbox();
    populateWidgetOptions();
    askPermission();
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('Responder'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_upload),
            title: Text('Enviar'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
