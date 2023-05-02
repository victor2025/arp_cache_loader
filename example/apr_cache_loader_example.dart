import 'package:arp_cache_loader/arp_cache_loader.dart';

void main() async{
  // load raw arp cache as string
  final String rawArpCache = await ArpLoader.loadRawArpCache();

  print('Raw arp cache: $rawArpCache');

  // load arp cache as map
  final Map<String,String> arpCacheMap = await ArpLoader.loadArpCacheAsMap();

  print('Arp cache in map: $arpCacheMap');
}
