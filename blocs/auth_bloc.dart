import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginRequested>(_onLoginRequested);
    on<SignupRequested>(_onSignupRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    await Future.delayed(Duration(seconds: 2));

    if (event.username == 'user' && event.password == '123456') {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure('Invalid username or password'));
    }
  }

  Future<void> _onSignupRequested(
    SignupRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    await Future.delayed(Duration(seconds: 2));

    if (event.password != event.confirmPassword) {
      emit(AuthFailure('Passwords do not match'));
    } else {
      emit(AuthSuccess());
    }
  }
}
