import 'package:codehallam/src/features/authentication/create_account/presentation/create_account_screen.dart';
import 'package:codehallam/src/features/authentication/login/presentation/forgot_password.dart';
import 'package:codehallam/src/features/authentication/login/presentation/login_screen.dart';


import 'package:codehallam/src/routing/not_found_screen.dart';
import 'package:codehallam/src/routing/route_name.dart';
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
        return MaterialPageRoute(
            builder: (_) => const ForgotPassword());  

      default:
        return MaterialPageRoute(
          builder: (_) => NotFoundScreen(),
        );
    }
  }
}
