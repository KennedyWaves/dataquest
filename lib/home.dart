import 'package:flutter/material.dart';
import 'question.dart';

DateTime _dateTime;

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

  void populateQuestsList() {
    _questsList = <Widget>[];
    _questsList.add(new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('Fulano Siclano da Silva'),
            subtitle: Text('Consequências ambientais (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
    _questsList.add(new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('Beutrano Beutrame da Silva'),
            subtitle: Text('Razões humanas (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(1900));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
    _questsList.add(new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text('John Lorem Doe'),
            subtitle: Text('Sustentabilidade e bom viver (06/12/2019)'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('EXIBIR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('EDITAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
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
      body: new Center(
          child: new Padding(
        padding: EdgeInsets.all(20),
        child: new Text(
          'Toque em + para iniciar um novo questionário.',
          style: optionStyle,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TelaDeQuestionario()))
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    ));
    _widgetOptions.add(new Scaffold(
      body: new Padding(
          padding: EdgeInsets.all(5),
          child: new ListView(children: _questsList)),
    ));
    _widgetOptions.add(new Scaffold(
      body: new Padding(
          padding: EdgeInsets.all(5),
          child: new ListView(children: _questsOutbox)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    populateQuestsList();
    populateQuestsOutbox();
    populateWidgetOptions();

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
            icon: Icon(Icons.list),
            title: Text('Listar'),
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
