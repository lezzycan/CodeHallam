import 'package:codehallam/src/features/authentication/login/presentation/notifier/login_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginScreenNotifier extends Notifier<LoginScreenState> {
  @override
  LoginScreenState build() {
    return LoginScreenState.initial();
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isToggled: !state.isToggled);
  }
}

final loginNotifier =
    NotifierProvider.autoDispose<LoginScreenNotifier, LoginScreenState>(() {
  return LoginScreenNotifier();
});