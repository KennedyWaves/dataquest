import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:dataquest/questFile.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Content.dart';
import 'entrevistaScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  List<Widget> _widgetOptions;
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Scaffold buildQuestHome() {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: new Text(
              '"INDICADORES ANTRÓPICOS"\n\nDataQuest 0.1 - PROCAD-AMAZÔNIA\n\nDesenvolvido por Bel. Kennedy Souza e Bel. Igor Aviz\nCoordenação: Prof. Dr. Marcos Seruffo\n\nUniversidade Federal do Pará',
              style: new TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          new Center(
              child: new Padding(
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
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EntrevistaScreen()))
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

  static PermissionStatus permissionStatus;

  static Future<PermissionStatus> askPermission() async {
    Completer resposta = new Completer<PermissionStatus>();
    permissionStatus = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (permissionStatus != PermissionStatus.granted) {
      Map<PermissionGroup, PermissionStatus> stats = await PermissionHandler()
          .requestPermissions([PermissionGroup.storage]);
      permissionStatus = stats[PermissionStatus];
    }
    resposta.complete(permissionStatus);
    return resposta.future;
  }


  Scaffold outboxWidget = new Scaffold(
      body: new Center(
          child: new Padding(
            padding: EdgeInsets.all(20),
            child: new Text(
                'Permissões não concedidas. Por favor, reinicie o app.',
                style: optionStyle),
            /*new Padding( padding: EdgeInsets.all(40)),*/
          )));

  List<Widget> outboxList = <Widget>[];

  void loadOutbox() async {
    QuestFile.outbox = <QuestFile>[];
    print("runningoutbox");
    final directory = await getExternalStorageDirectory();
    final dir = Directory('${directory.path}${Content.folderPath}');
    //print(dir.existsSync());    // <---- it also print: false
    List<FileSystemEntity> files = dir.listSync().toList();
    List<String> paths = <String>[];
    files.forEach((f) => paths.add(f.path));
    for (String questPath in paths) {
      if (questPath.indexOf(".csv") < 0) {
        continue;
      }
      List<String> splitPath = questPath.split("/");
      var questItem = await QuestFile.loadQuestFile(
          splitPath[splitPath.length - 1], sobeBotao);
      QuestFile.outbox.add(questItem);
    }
  }

  bool alguemMarcado() {
    for (int x = 0; x < QuestFile.outbox.length; x++) {
      if (QuestFile.outbox[x].marcado) {
        return true;
      }
    }
    return false;
  }

  void sobeBotao() {
    if (alguemMarcado()) {
      uploadButtonHolder = new FloatingActionButton(
          onPressed: () {
            uploadFiles();
          },
          tooltip: 'Enviar arquivos para o servidor.',
          child: const Icon(Icons.cloud_upload)
      );
    } else {
      uploadButtonHolder = null;
    }
  }

  void buildOutbox() {
    if (permissionStatus == PermissionStatus.granted) {
      outboxList = <Widget>[];
      for (int x = 0; x < QuestFile.outbox.length; x++) {
        outboxList.add(new ListTile(
          onTap: () {},
          title: new Row(
            children: <Widget>[
              new Expanded(child: new Text(QuestFile.outbox[x].nome)),
              new Checkbox(
                  value: QuestFile.outbox[x].marcado,
                  onChanged: (bool value) {
                    setState(() {
                      print("valor $value");
                      QuestFile.outbox[x].marcado = value;
                      sobeBotao();
                    });
                  })
            ],
          ),
        ));
      }
      outboxList.add(new Padding(padding: EdgeInsets.only(top: 200)));
      outboxWidget = new Scaffold(
        body: new ListView(children: outboxList),
        floatingActionButton: uploadButtonHolder,
      );
    }
  }

  void uploadFiles() async {
    final directory = await getExternalStorageDirectory();
    for (QuestFile otbXList in QuestFile.outbox) {
      if (!otbXList.marcado) {
        continue;
      }
      otbXList.nomeArquivo='${directory.path}${Content.folderPath}/${otbXList.nomeArquivo}';
      File current = new File('${otbXList.nomeArquivo}');
      print("CAMINHO CURRENT${otbXList.nomeArquivo}");
      StorageReference storageReference = FirebaseStorage.instance
          .ref()
          .child('quests/${p.basename(otbXList.nomeArquivo)}');
      StorageUploadTask uploadTask = storageReference.putFile(current);
      uploadTask.onComplete.then((value){
        print('File Uploaded');
        storageReference.getDownloadURL().then((fileUrl) async {
          await current.rename('${p.basename(otbXList.nomeArquivo)}'.replaceAll(".csv","§¬.csv"));
          setState(() {
            loadOutbox();
          });
        });
      });
    }
  }

  FloatingActionButton uploadButtonHolder;
  FloatingActionButton uploadButton;
  Scaffold homePage;

  @override
  void initState() {
    super.initState();
    homePage = buildQuestHome();
    if (permissionStatus == PermissionStatus.granted) {
      loadOutbox();
    }
  }

  @override
  Widget build(BuildContext context) {
    buildOutbox();
    _widgetOptions = <Widget>[];
    _widgetOptions.add(homePage);
    _widgetOptions.add(outboxWidget);
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('Entrevista'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            title: Text('Caixa de Saída'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}
