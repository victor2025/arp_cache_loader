import 'package:arp_cache_loader/src/configs/strings.dart';

class RegExpUtils{
  static String? getIp(String str){
    return Regs.ip.firstMatch(str)?.group(0);
  }

  static String? getMac(String str){
    return Regs.mac.firstMatch(str)?.group(0);
  }
}