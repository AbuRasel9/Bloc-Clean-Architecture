import 'package:bloc_clean_architecture/config/utils/api_url.dart';
import 'package:bloc_clean_architecture/data/network/base_api_services.dart';
import 'package:bloc_clean_architecture/model/user_model_request.dart';
import 'package:bloc_clean_architecture/services/diServices/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../model/user_model.dart';
import 'auth_repository.dart';

//this class use for call api in real api
//as:AuthRepository use for this is abstract class for this reason use as AuthRepository
//when i use dummy api call than this injectable function comment than command run than use
@Injectable(as:AuthRepository )
class AuthHttpRepository  implements AuthRepository{
  final _api = getIt.get<BaseApiServices>();

  @override
  Future<UserModel> loginApi({required UserModelRequest data}) async {
    if (kDebugMode) {
      print("request --------$data}");
    }
    final response = await _api.postRequest(ApiUrl.loginApi, data.toJson());
    if (kDebugMode) {
      print(response);
    }
    // print("response ------${UserModel.fromJson(response.body)}");
    return UserModel.fromJson(response);
  }
}
