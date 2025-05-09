abstract class LocalStorage {

  Future<bool>setValue(String key,String value);
  Future<dynamic>readValue(String key);
  Future<bool>clearValue(String key);

}