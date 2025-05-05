import 'package:bloc_clean_architecture/data/network/base_api_services.dart';
import 'package:bloc_clean_architecture/data/network/network_services_api.dart';
import 'package:bloc_clean_architecture/model/user_model_request.dart';

import '../model/user_model.dart';

class AuthRepository {
  final _api = NetworkServicesApi();

  Future<UserModel> loginApi({required Map<String, dynamic> data}) async {
    final response =
        await _api.postRequest("https://reqres.in/api/login", data);
    print("response ------${UserModel.fromJson(response.body)}");
    return UserModel.fromJson(response.body);
  }
}
