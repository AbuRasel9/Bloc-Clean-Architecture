import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class EmailChange extends LoginEvent {
  final String emailValue;

  const EmailChange({
    required this.emailValue,
  });

  @override
  List<Object?> get props => [];
}

class PasswordChange extends LoginEvent {
  final String passwordValue;

  const PasswordChange({
    required this.passwordValue,
  });

  @override
  List<Object?> get props => [passwordValue];
}

class UnFocusEmail extends LoginEvent {}

class UnFocusPassword extends LoginEvent {}

class SubmitData extends LoginEvent {}
