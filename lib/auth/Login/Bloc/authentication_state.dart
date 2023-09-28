// ignore_for_file: await_only_futures, prefer_const_constructors_in_immutables, override_on_non_overriding_member, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/login_mutation_response.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final LoginMutationResponse sessionData;

  AuthenticationSuccess({required this.sessionData});
}

class AuthenticationError extends AuthenticationState {
  AuthenticationError(String err, {required String errorMessage});

  factory AuthenticationError.networkError() {
    return AuthenticationError('', errorMessage: 'Network error occurred');
  }

  factory AuthenticationError.invalidCredentials() {
    return AuthenticationError(errorMessage: 'Invalid credentials', '');
  }

  factory AuthenticationError.genericError(String message) {
    return AuthenticationError(errorMessage: message, '');
  }
}

class TokenUpdated extends Equatable {
  final String token; 
  TokenUpdated({required this.token});

  @override
  List<Object?> get props => [token];
}

class TokenBloc extends Bloc<TokenUpdated, String> {
  TokenBloc() : super('');

  @override
  Stream<String> mapEventToState(TokenUpdated event) async* {
    yield event.token;
  }
}
