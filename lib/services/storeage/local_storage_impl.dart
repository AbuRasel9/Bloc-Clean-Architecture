import 'package:bloc_clean_architecture/services/storeage/local_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//use LocalStorage for this class part of LocalStorage
class LocalStorageImpl implements LocalStorage{
  final storage=const FlutterSecureStorage();
  //clear value from local storage
  @override
  Future<bool> clearValue(String key) async {
   await storage.delete(key: key);
   return true;
  }
//get value key wise
  @override
  Future<dynamic> readValue(String key) async {
   return await storage.read(key: key);
  }
//use for set value
  @override
  Future<bool> setValue(String key, String value) async {
    await storage.write(key: key, value: value);
    return true;


  }

}