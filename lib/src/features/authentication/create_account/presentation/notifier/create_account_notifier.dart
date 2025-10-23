import 'package:codehallam/src/features/authentication/create_account/presentation/notifier/create_account_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateAccountNotifier extends Notifier<CreateAccountState> {
  @override
  build() {
    return CreateAccountState.initial();
  }


  void togglePasswordVisibility() {
    state = state.copyWith(isToggled: !state.isToggled);
  }
  void toggleCheckbox(bool val){
    state = state.copyWith(isChecked: val);
  }
}

final createAccountNotifier = NotifierProvider.autoDispose<
    CreateAccountNotifier, CreateAccountState>(() {
  return CreateAccountNotifier();
});