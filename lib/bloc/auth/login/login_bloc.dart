import 'package:bloc_clean_architecture/bloc/auth/login/login_event.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_state.dart';
import 'package:bloc_clean_architecture/repository/auth_repository.dart';
import 'package:bloc_clean_architecture/services/diServices/injection.dart';
import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/authModel/user_model_request.dart';
import '../../../services/sessionManager/session_controller.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginApiEvent>(_loginApi);
  }
  final repo=getIt.get<AuthRepository>();


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
        postApiStatus: ApiStatus.loading,
      ),
    );
    UserModelRequest data =
        UserModelRequest(email: state.email, password: state.password);
    await repo.loginApi(data: data).then(
      (value) async {
        if (value.error.isEmpty) {

          await SessionController().saveUserInPreference(value);
          await SessionController().getValueInPreference();
          emit(
            state.copyWith(
              message: "Login Successfull",
              postApiStatus: ApiStatus.success,
              userData: value,
            ),
          );
        } else {
          emit(
            state.copyWith(
              message: "Login Failed ${value.error}",
              postApiStatus: ApiStatus.error,
            ),
          );
        }
      },
    ).onError(
      (error, stackTrace) {
        emit(
          state.copyWith(
            postApiStatus: ApiStatus.error,
            message: error.toString(),
          ),
        );
        if (kDebugMode) {
          print("error $error line $stackTrace");
        }
      },
    );
  }
}
