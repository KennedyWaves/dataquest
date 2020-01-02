import 'dart:math';
import 'package:dataquest/questionario.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class Utils {
  static String questToCsv(Questionario quest, [String separador]) {
    if (separador == null) {
      separador = ",";
    }
    String line0 = "${quest.eixo}$separador";
    String line1 =
        "METADATA$separador$separador$separador$separador$separador$separador$separador${quest.todosOsTemas()}$separador$separador";
    String line2 =
        "NOME${separador}DATA_NASCIMENTO${separador}GENERO${separador}ATIV_LABORAL${separador}FORMACAO${separador}LOCALIDADE${separador}TIMESTAMP$separador${quest.todasAsQuestoes()}${separador}OBSERVACOES$separador";
    String line3 =
        "${quest.pessoa.nome}$separador${quest.pessoa.dataNascimentoText()}$separador${quest.pessoa.genero}$separador${quest.pessoa.trabalho}$separador${quest.pessoa.formacao}$separador${quest.pessoa.localidade}$separador${quest.timestamp}$separador${quest.todasAsRespostas()}$separador${quest.pessoa.observacoes}$separador";
    String result = line1 + "\n" + line2 + "\n" + line3;
    int howMany = separador.allMatches(line3).length;
    for (int x = 1; x < howMany; x++) {
      line0 += "$separador";
    }
    return line0 + "\n" + result;
  }

  static write(String text, String filename) async {
    print("writing...");
    PermissionStatus status = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (status != PermissionStatus.granted) {
      Map<PermissionGroup, PermissionStatus> request = await PermissionHandler()
          .requestPermissions([PermissionGroup.storage]);
      status = request[PermissionGroup.storage];
    }
    print("SELECT");
    switch (status) {
      case PermissionStatus.granted:
        final directory = await getExternalStorageDirectory();
        bool exists =
            await Directory('${directory.path}/dataquest/quests').exists();
        if (!exists) {
          new Directory('${directory.path}/dataquest/quests')
              .create(recursive: true)
              // The created directory is returned as a Future.
              .then((Directory directory) {
            print(directory.path);
          });
        }
        print('LOCATION ${directory.path}/dataquest/quests');
        final file = File('${directory.path}/dataquest/quests/$filename');
        await file.writeAsString(text);
        print("CARALHO SAVED!");
        break;
      case PermissionStatus.denied:
        // do something
        print("CARALHO DENIED!");
        break;
      case PermissionStatus.disabled:
        print("CARALHO DISABLED!");
        // do something
        break;
      case PermissionStatus.restricted:
        print("CARALHO RESTRICTED!");
        // do something
        break;
      default:
        print(status);
        break;
    }
  }

  static double filter(double value, {double maximum, double minimum}) {
    if (max != null && min != null) {
      return [
        [value, minimum].reduce(max),
        maximum
      ].reduce(min);
    }

    if (max != null && min == null) {
      return [value, maximum].reduce(min);
    }

    if (max == null && min != null) {
      return [value, minimum].reduce(max);
    }
    return value;
  }
}
