import 'dart:convert';
import 'dart:io';


class FileLoader{

  static Future<String> loadFileAsString(String filepath) async{
    var file = File(filepath);
    // only support files encoded by utf-8
    String content = await file.readAsString()
        .catchError((error, stackTrace){
          return file.readAsStringSync(encoding: utf8);
    });
    return content;
  }

}
