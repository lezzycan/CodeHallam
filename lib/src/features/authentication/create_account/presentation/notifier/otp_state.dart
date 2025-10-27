class OtpResendState {
  final bool isButtonDisabled;
  final int secondsRemaining;
  final bool showTimer;

  OtpResendState({
    required this.isButtonDisabled,
    required this.secondsRemaining,
    required this.showTimer,
  });

  OtpResendState copyWith({
    bool? isButtonDisabled,
    int? secondsRemaining,
    bool? showTimer,
  }) {
    return OtpResendState(
      isButtonDisabled: isButtonDisabled ?? this.isButtonDisabled,
      secondsRemaining: secondsRemaining ?? this.secondsRemaining,
      showTimer: showTimer ?? this.showTimer,
    );
  }
}