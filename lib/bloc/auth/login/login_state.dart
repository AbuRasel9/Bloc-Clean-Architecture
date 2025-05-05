import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState({
    this.errorMessage = "",
    this.email = "",
    this.password = "",
    this.postApiStatus = PostApiStatus.initial,
  });

  final String email, errorMessage;
  final String password;
  final PostApiStatus postApiStatus;

  LoginState copyWith(
      {String? email,
      String? password,
      PostApiStatus? postApiStatus,
      String? errorMessage}) {
    return LoginState(
      errorMessage: errorMessage ?? this.errorMessage,
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus];
}
