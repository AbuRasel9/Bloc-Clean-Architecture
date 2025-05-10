
import '../model/authModel/user_model.dart';
import '../model/authModel/user_model_request.dart';

//for api call create this repository
abstract class AuthRepository {

  Future<UserModel> loginApi({required UserModelRequest data});
}
