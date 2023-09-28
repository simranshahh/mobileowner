import 'package:bloc/bloc.dart';

import '../model/login_mutation_response.dart';
import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  void login(LoginMutationResponse sessionData) {
    emit(AuthenticationSuccess(sessionData: sessionData));
  }

  void logout() {
    emit(AuthenticationError('User not logged in', errorMessage: 'error'));
  }
}
