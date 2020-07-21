import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class UnAuthenticated extends AuthState {}

class AuthenticationFailed extends AuthState {}

class Authenticated extends AuthState {}