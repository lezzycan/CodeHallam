import 'dart:async';
import 'package:codehallam/src/features/authentication/create_account/presentation/notifier/otp_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OtpResendNotifier extends Notifier<OtpResendState> {
  Timer? _timer;

  @override
  OtpResendState build() {
    ref.onDispose(() {
      _timer?.cancel();
    });

    // 🟢 Default: button active, no timer
    return OtpResendState(
      isButtonDisabled: false,
      secondsRemaining: 0,
      showTimer: false,
    );
  }

  void _startTimer() {
    state = state.copyWith(
      isButtonDisabled: true,
      secondsRemaining: 30,
      showTimer: true,
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.secondsRemaining <= 1) {
        timer.cancel();
        state = state.copyWith(
          isButtonDisabled: false,
          secondsRemaining: 0,
          showTimer: false,
        );
      } else {
        state = state.copyWith(secondsRemaining: state.secondsRemaining - 1);
      }
    });
  }

  void resendOtp(Function resendCallback) {
    // 🔁 call your resend API or logic here
    resendCallback();

    // Start countdown
    _startTimer();
  }
}


final otpNotifier =
    NotifierProvider<OtpResendNotifier, OtpResendState>(() {
  return OtpResendNotifier();
});