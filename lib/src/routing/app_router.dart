import 'routes.dart';
import 'package:flutter/material.dart';

class RouteManager {
  RouteManager._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.signUp:
        return MaterialPageRoute(builder: (_) => const CreateAccountScreen());

      case RouteName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteName.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RouteName.dashboard:
        return MaterialPageRoute(builder: (_) => const DashBoard());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteName.explore:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());
      case RouteName.learning:
        return MaterialPageRoute(builder: (_) => const MyLearningScreen());
      case RouteName.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => NotFoundScreen(),
        );
    }
  }
}
