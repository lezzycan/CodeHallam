import 'package:codehallam/src/dashboard/presentation/notifier/dashboard_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashBoardNotifier extends Notifier<DashboardState> {
  @override
  build() {
    return DashboardState.initial();
  }

  void updateIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}

final dashBoardNotifier =
    NotifierProvider.autoDispose<DashBoardNotifier, DashboardState>(
        () => DashBoardNotifier());
