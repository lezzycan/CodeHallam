import 'package:codehallam/src/config/enum/api_enum_state.dart';

class CreateAccountState {

 final bool isToggled;
 final bool isChecked;
 final LoadState loadState;

  CreateAccountState( { required this.isChecked,required this.isToggled, required this.loadState}); 
  factory CreateAccountState.initial() {
    return CreateAccountState(
      isChecked: false,
      isToggled: false,
      loadState: LoadState.idle,
    );
  } 

  CreateAccountState copyWith({
    bool? isChecked,
    bool? isToggled,
    LoadState? loadState,
  }) {
    return CreateAccountState(
      isToggled: isToggled ?? this.isToggled,
      loadState: loadState ?? this.loadState, isChecked: isChecked?? this.isChecked,
    );
  }
}