import 'dart:io';

import 'package:apr_cache_loader/src/configs/strings.dart';
import 'package:apr_cache_loader/src/utils/reg_exp_utils.dart';

import 'loaders/default_loader.dart';
import 'loaders/win_loader.dart';


abstract class ArpLoader{

  /// singleton getter
  static final ArpLoader _loader = _initLoader();

  /// init getter
  static ArpLoader _initLoader(){
    late ArpLoader loader;
    switch (Platform.operatingSystem){
      case Platforms.windows:
        loader = WinArpLoader();
        break;
      default:
        loader = DefaultArpLoader();
        break;
    }
    return loader;
  }

  /// load arp cache as map
  static Future<Map<String,String>> loadArpCacheAsMap() async{
    return _loader.loadAsMap();
  }

  /// load arp cache as string
  static Future<String> loadRawArpCache() async{
    return _loader.loadAsString();
  }

  /// load arp cache as string
  Future<String> loadAsString();

  /// parse string to map
  Future<Map<String,String>> loadAsMap();

  /// parse arp from string to map
  Map<String,String> parseArpCache(String str){
    final Map<String,String> res = {};
    List<String> lines = str.split("\n");
    for (var line in lines) {
      if(line.isEmpty)continue;
      // match ip
      String? ip = RegExpUtils.getIp(line);
      if(ip==null)continue;
      // match mac
      String? mac = RegExpUtils.getMac(line);
      if(mac==null)continue;
      // put into map
      res[ip] = mac.toUpperCase();
    }
    return res;
  }

}