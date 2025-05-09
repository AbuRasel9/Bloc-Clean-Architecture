import 'package:bloc_clean_architecture/model/user_model_request.dart';

import '../model/user_model.dart';

//for api call create this repository
abstract class AuthRepository {

  Future<UserModel> loginApi({required UserModelRequest data});
}
