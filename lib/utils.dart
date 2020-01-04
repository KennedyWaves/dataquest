import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Utils {
  static write(String text, String filename) async {
    filename = filename.replaceAll("/", "-");
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
        await file.writeAsString(text, mode: FileMode.write);
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
