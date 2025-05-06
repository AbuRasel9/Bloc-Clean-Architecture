import 'package:bloc_clean_architecture/model/user_model.dart';
import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
   LoginState({
    this.message = "",
    this.email = "",
    this.password = "",
    this.postApiStatus = PostApiStatus.initial,
    UserModel? userModel,
  }) : userModel = userModel ?? UserModel();

  final String email, message;
  final String password;
  final UserModel userModel;
  final PostApiStatus postApiStatus;

  LoginState copyWith({
    String? email,
    String? password,
    PostApiStatus? postApiStatus,
    String? message,
    UserModel? userData,
  }) {
    return LoginState(
      message: message ?? this.message,
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      userModel: userData ?? this.userModel,
    );
  }

  @override
  List<Object?> get props => [userModel,email, password, postApiStatus, userModel];
}


