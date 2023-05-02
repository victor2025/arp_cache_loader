import 'package:arp_cache_loader/src/arp_loader.dart';
import 'package:arp_cache_loader/src/utils/command_run_utils.dart';
import 'package:arp_cache_loader/src/utils/file_utils.dart';

class DefaultArpLoader extends ArpLoader{

  static const String _arpCmd = "ip neigh";
  static const String _arpPath = "/proc/net/arp";

  @override
  Future<Map<String, String>> loadAsMap() async{
    String arpStr = await loadAsString();
    return parseArpCache(arpStr);
  }

  @override
  Future<String> loadAsString() async{
    String cache = await _loadByCmd();
    if(cache.isEmpty){
      cache = await _loadFromFile();
    }
    return cache;
  }

  Future<String> _loadByCmd() async{
    return CommandRunner.runCommand(_arpCmd)
        .catchError((e)=>Future.value(""));
  }

  Future<String> _loadFromFile() async{
    return FileLoader.loadFileAsString(_arpPath)
        .catchError((e)=>Future.value(""));
  }

}