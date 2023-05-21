# netlink造成的Android11(30)以上系统无法读取arp缓存的问题

感谢你的反馈，我查阅了相关资料，发现这些问题与安卓系统的版本有关：

arp_cache_loader获取arp缓存的几种方法最终都需要通过netlink实现（netlink是linux中一个用于内核与用户空间通信的接口），但谷歌限制了netlink在Android11(30)及其后续版本中的使用，因此arp_cache_loader在这些系统中无法正常工作，并且我现在暂时没有找到解决方法。

下面是我找到的一些类似问题的反馈：
- [Cannot bind() netlink socket when targeting Android API 30](https://stackoverflow.com/questions/64884994/cannot-bind-netlink-socket-when-targeting-android-api-30)
- [Local discovery problem on Android 11](https://forum.syncthing.net/t/local-discovery-problem-on-android-11/16093/2)
- [NETLINK_ROUTE socket binding not available on Android 11+, can we live without it for Android?](https://github.com/arvidn/libtorrent/issues/6251)

我之后会在说明中提醒这个问题，如果你找到了解决方法也麻烦告诉我，再次感谢。