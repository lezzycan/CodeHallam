
import 'package:codehallam/src/common_widget/primary_button.dart';
import 'package:codehallam/src/routing/route_name.dart';
import 'package:codehallam/src/utils/constants/app_sizes.dart';
import 'package:codehallam/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({required this.message, super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            PrimaryButton(
              onPressed: () => context.goNamed(RouteName.login),
              text: 'Go Home',
            )
          ],
        ),
      ),
    );
  }
}
