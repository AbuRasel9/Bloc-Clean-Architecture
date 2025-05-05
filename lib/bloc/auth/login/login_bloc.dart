import 'package:bloc_clean_architecture/bloc/auth/login/login_event.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_state.dart';
import 'package:bloc_clean_architecture/model/user_model_request.dart';
import 'package:bloc_clean_architecture/repository/auth_repository.dart';
import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginApiEvent>(_loginApi);
  }

  final AuthRepository authRepository = AuthRepository();

  //set email value form event
  void _onEmailChange(EmailChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.emailValue,
      ),
    );
  }

  //set password value
  void _onPasswordChange(PasswordChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.passwordValue,
      ),
    );
  }

  //login
  Future<void> _loginApi(LoginApiEvent event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        postApiStatus: PostApiStatus.loading,
      ),
    );
    UserModelRequest data =
        UserModelRequest(email: state.email, password: state.password);
    await authRepository.loginApi(data: data).then(
      (value) {
        emit(
          state.copyWith(
            postApiStatus: PostApiStatus.success,
          ),
        );
      },
    ).onError(
      (error, stackTrace) {
        emit(
          state.copyWith(
            postApiStatus: PostApiStatus.success,
            errorMessage: error.toString(),
          ),
        );
        print("error $error line $stackTrace");
      },
    );
  }
}
