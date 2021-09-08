abstract class IDataAdapter {
  Future<Map> fetch(String boxname);
  Future<void> save<T>(String boxname, String key, T data);
  Future<void> remove<T>(String boxname, String key);
  Future<T> get<T>(String boxname, String key);
}
