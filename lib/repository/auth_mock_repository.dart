import 'package:flutter/foundation.dart';

import '../model/authModel/user_model.dart';
import '../model/authModel/user_model_request.dart';
import 'auth_repository.dart';

//this class use for call api in dummy when api not ready but developer work when api give than url give and work
//as:AuthRepository use for this is abstract class for this reason use as AuthRepository
//when i use real  api call use  than this injectable function comment than command run than use

// @Injectable(as: AuthRepository)
class AuthMockRepository implements AuthRepository {

  @override
  Future<UserModel> loginApi({required UserModelRequest data}) async {
    if (kDebugMode) {
      print("request --------$data}");
    }
    //dummy api call when user call this function than dummy api call and wait 3 second

    await Future.delayed(const Duration(seconds: 3));
    //dummy response create for dummy api call
    final response = {
      "token": "4456cfgghjyttt",
    };
    if (kDebugMode) {
      print(response);
    }
    // print("response ------${UserModel.fromJson(response.body)}");
    return UserModel.fromJson(response);
  }
}
