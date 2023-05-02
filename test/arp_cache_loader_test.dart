import 'package:arp_cache_loader/arp_cache_loader.dart';
import 'package:test/test.dart';

void main() {
  test('load arp', () async{
    Map<String,String> arp = await ArpLoader.loadArpCacheAsMap();
    print(arp);
  });
}
