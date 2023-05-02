class Platforms{
  static const windows = 'windows';
  static const android = 'android';
  static const linux = 'linux';
}

class Regs{

  // arp
  static final RegExp ip = RegExp(r"((2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2})(\.((2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2})){3}");
  static final RegExp mac = RegExp(r"([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})");

}