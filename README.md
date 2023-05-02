Loading tools of arp cache, which make it more convenient to find corresponding mac address by ip address.

*Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).*

[**中文文档**](https://github.com/victor2025/arp_cache_loader/blob/master/README-ZH.md)

## Usage

`ArpLoader` provides two methods to load arp cache: 
1. `ArpLoader.loadRawArpCache()` loads raw arp cache as string;
2. `ArpLoader.loadArpCacheMap()` loads arp cache and parse it to a map with ip address as the key and mac address as the value.

Here is a simple usage example:

```dart
import 'package:apr_cache_loader/apr_cache_loader.dart';

void main() async{
  // load raw arp cache as string
  final String rawArpCache = await ArpLoader.loadRawArpCache();

  print('Raw arp cache: $rawArpCache');

  // load arp cache as map
  final Map<String,String> arpCacheMap = await ArpLoader.loadArpCacheAsMap();

  print('Arp cache in map: $arpCacheMap');
}

```

## Platforms
- windows
- android
- linux
- macos(untested)

## Issues

Please submit issue at the [issue tracker][tracker].

[tracker]: https://github.com/victor2025/arp_cache_loader/issues
