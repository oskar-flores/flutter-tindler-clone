part of 'sign_up_bloc.dart';

@Immutable()
abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends SignUpEvent {
  final String email;

  EmailChanged({required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() {
    return "email changed $email";
  }
}

class PasswordChanged extends SignUpEvent {
  final String password;

  PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];

  @override
  String toString() {
    return "password  changed $password";
  }
}

class Submitted extends SignUpEvent {
  final String email;
  final String password;

  Submitted({required this.email, required this.password});

  @override
  List<Object> get props => [password, email];
}

class SignUpWithCredentialsPressed extends SignUpEvent {
  final String email;
  final String password;

  SignUpWithCredentialsPressed({required this.email, required this.password});

  @override
  List<Object> get props => [password, email];
}
