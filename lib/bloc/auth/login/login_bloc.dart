import 'package:bloc_clean_architecture/bloc/auth/login/login_event.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
  }

  //set email value form event
  void _onEmailChange(EmailChange event, Emitter<LoginState> emit) {
    print("------${event.emailValue}");
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
}
