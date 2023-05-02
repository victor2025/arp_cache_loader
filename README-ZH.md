Arp缓存读取工具，方便根据ip地址找到对应的mac地址。

## 用法

`ArpLoader`中提供了两种读取arp缓存的方法: 
1. `ArpLoader.loadRawArpCache()`读取原始的arp缓存
2. `ArpLoader.loadArpCacheMap()`读取arp缓存，并将其解析为以ip地址为键以mac地址为值的map。

下面是一个示例：

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

## 支持的平台
- windows
- android
- linux
- macos(untested)

## Issues

请在[issue tracker][tracker]中反馈issue。

[tracker]: https://github.com/victor2025/arp_cache_loader/issues
