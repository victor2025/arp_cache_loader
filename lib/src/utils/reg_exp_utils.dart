import 'package:apr_cache_loader/src/configs/strings.dart';

class RegExpUtils{
  static String? getIp(String str){
    return Regs.IP.firstMatch(str)?.group(0);
  }

  static String? getMac(String str){
    return Regs.MAC.firstMatch(str)?.group(0);
  }

  static String? getNum(String str){
    return Regs.NUM.firstMatch(str)?.group(0);
  }

  static String? getPosInt(String str){
    return Regs.POS_INT.firstMatch(str)?.group(0);
  }
}