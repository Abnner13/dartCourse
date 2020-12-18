class Televisao {
  void volumeUp() {}
  void volumeDown() {}
}

class SamrtTv implements Televisao {
  bool netflix = true;
  @override
  void volumeDown() {
    print('Aumentou');
  }

  @override
  void volumeUp() {
    print('Abaixou');
  }

  void networkConnection() {
    print('networkConnection is working');
  }
}
