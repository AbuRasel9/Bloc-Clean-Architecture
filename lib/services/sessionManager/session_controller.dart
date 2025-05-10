import 'dart:convert';

import 'package:bloc_clean_architecture/services/storeage/local_storage.dart';
import 'package:bloc_clean_architecture/services/storeage/local_storage_impl.dart';
import 'package:flutter/cupertino.dart';

import '../../model/authModel/user_model.dart';

class SessionController {
  //this is singleton pattern class
  //use for onece time create instance this class use all app
  //create private constractor for one time
  static final SessionController _session = SessionController._internal();
  LocalStorage localStorage = LocalStorageImpl();
  bool? isLogin;
  UserModel user = UserModel();

  SessionController._internal() {
    isLogin = false;
  }

//create this method call this class and use all element
  factory SessionController() {
    return _session;
  }

  //save token
  Future<void> saveUserInPreference(dynamic user) async {
    await localStorage.setValue("token", jsonEncode(user));
    //set value user login
    await localStorage.setValue("isLogin", "true");
  }

  //get value
  Future<void> getValueInPreference() async {
    try {
      var userData = await localStorage.readValue("token");
      var checkLogin = await localStorage.readValue("isLogin");
      if (userData.isNotEmpty) {
        SessionController().user = UserModel.fromJson(jsonDecode(userData));
      }
      SessionController().isLogin = checkLogin == "true" ? true : false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //clear data form local storage
  Future<void>clearValueInPreference()async{
    await localStorage.clearValue("token");
    await localStorage.clearValue("isLogin");

  }
}
