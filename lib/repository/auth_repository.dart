import 'package:bloc_clean_architecture/config/utils/api_url.dart';
import 'package:bloc_clean_architecture/data/network/network_services_api.dart';
import 'package:bloc_clean_architecture/model/user_model_request.dart';
import 'package:flutter/foundation.dart';

import '../model/user_model.dart';

class AuthRepository {
  final _api = NetworkServicesApi();

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
