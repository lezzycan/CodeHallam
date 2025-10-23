import 'package:codehallam/src/config/enum/api_enum_state.dart';

class LoginScreenState {

 final bool isToggled;
 final LoadState loadState;

  LoginScreenState({required this.isToggled, required this.loadState}); 
  factory LoginScreenState.initial() {
    return LoginScreenState(
      isToggled: false,
      loadState: LoadState.idle,
    );
  } 

  LoginScreenState copyWith({
    bool? isToggled,
    LoadState? loadState,
  }) {
    return LoginScreenState(
      isToggled: isToggled ?? this.isToggled,
      loadState: loadState ?? this.loadState,
    );
  }
}