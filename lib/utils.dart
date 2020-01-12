import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'content.dart';

class Utils {
  static String getInitials(String name) {
    String result = "";
    var nameList = name.toLowerCase().split(" ");
    for (String part in nameList) {
      result += part[0];
    }
    return result;
  }

  static Future<String> read(String filename) async {
    //print("reading...");
    PermissionStatus status = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    //print("SELECT");
    switch (status) {
      case PermissionStatus.granted:
        final directory = await getExternalStorageDirectory();
        bool exists =
        await Directory('${directory.path}${Content.folderPath}').exists();
        Future<String> carrega() async {
          //print('LOCATION ${directory.path}${Content.folderPath}');
          final file = File('$filename');
          String contents = await file.readAsString();
          //print("CARALHO IT HAS BEEN READ!");
          //print("conteudo lido $contents");
          return contents;
        }
        if (!exists) {
          new Directory('${directory.path}${Content.folderPath}')
              .create(recursive: true)
          // The created directory is returned as a Future.
              .then((Directory directory) async {
            //print(directory.path);
            return await carrega();
          });
        } else {
          return await carrega();
        }
        break;
      case PermissionStatus.denied:
      // do something
      //print("CARALHO DENIED!");
        break;
      case PermissionStatus.disabled:
      //print("CARALHO DISABLED!");
      // do something
        break;
      case PermissionStatus.restricted:
      //print("CARALHO RESTRICTED!");
      // do something
        break;
      default:
      //print(status);
        break;
    }
    return "failed";
  }

  static Future<bool> write(String text, String filename) async {
    filename = filename.replaceAll("/", "-");
    print("writing...");
    PermissionStatus status = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    bool result = false; //print("SELECT");
    switch (status) {
      case PermissionStatus.granted:
        final directory = await getExternalStorageDirectory();
        bool exists =
        await Directory('${directory.path}${Content.folderPath}').exists();
        Future<bool> save() async {
          //print('LOCATION ${directory.path}${Content.folderPath}');
          final file = File('${directory.path}${Content.folderPath}/$filename');
          File resultFile = await file.writeAsString(text, mode: FileMode
              .write); //.whenComplete((){result=true;}).catchError((e, stack){print(e.toString());result= false;});
          if (resultFile.lengthSync() > 0) {
            result = true;
          }
          return Future.value(result);
          //print("CARALHO SAVED!");
        }
        if (!exists) {
          await new Directory('${directory.path}${Content.folderPath}').create(
              recursive: true);
        }
        return await save();
        break;
      case PermissionStatus.denied:
        // do something
      //print("CARALHO DENIED!");
        break;
      case PermissionStatus.disabled:
      //print("CARALHO DISABLED!");
        // do something
        break;
      case PermissionStatus.restricted:
      //print("CARALHO RESTRICTED!");
        // do something
        break;
      default:
      //print(status);
        break;
    }
    return Future.value(result);
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
