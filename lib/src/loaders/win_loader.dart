

import 'package:arp_cache_loader/src/arp_loader.dart';
import 'package:arp_cache_loader/src/utils/command_run_utils.dart';

class WinArpLoader extends ArpLoader{

  static const String _arpCmd = "arp -a";

  @override
  Future<Map<String, String>> loadAsMap() async{
    String arpStr = await loadAsString();
    // 替换分隔符
    arpStr = arpStr.replaceAll('-', ':');
    // 将字符串解析为map
    return parseArpCache(arpStr);
  }

  @override
  Future<String> loadAsString() async{
    return await CommandRunner.runCommand(_arpCmd)
        .catchError((e)=>Future.value(""));
  }

}