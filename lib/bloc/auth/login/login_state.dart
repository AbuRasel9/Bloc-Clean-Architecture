import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState({
    this.email = "",
    this.password = "",
    this.postApiStatus = PostApiStatus.initial,
  });

  final String email;
  final String password;
  final PostApiStatus postApiStatus;

  LoginState copyWith(
      {String? email, String? password, PostApiStatus? postApiStatus}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  @override
  List<Object?> get props => [email, password,postApiStatus];
}
