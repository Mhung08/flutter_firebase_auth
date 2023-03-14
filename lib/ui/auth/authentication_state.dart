part of 'authentication_bloc.dart';

enum AuthState { firstRun, authenticated, unauthenticated }

class AuthenticationState {
  final AuthState authState;
  final UserLogin? user;
  final String? message;

  const AuthenticationState._(this.authState, {this.user, this.message});

  const AuthenticationState.authenticated(UserLogin user)
      : this._(AuthState.authenticated, user: user);

  const AuthenticationState.unauthenticated({String? message})
      : this._(AuthState.unauthenticated,
            message: message ?? 'Unauthenticated');

  const AuthenticationState.onboarding() : this._(AuthState.firstRun);
}
