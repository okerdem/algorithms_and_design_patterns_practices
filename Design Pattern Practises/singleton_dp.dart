class Singleton {
  static Singleton? _instance;
  late String _data;
  static bool _instanceRunning = false;

  Singleton._Singleton(String data) {
    this._data = data;
  }

  static Singleton? getInstance(String data) {
    if (_instanceRunning) {
      return getInstance(data);
    } else if (_instance == null) {
      _instanceRunning = true;
      _instance = new Singleton._Singleton(data);
      _instanceRunning = false;
    }
    return _instance;
  }
}
