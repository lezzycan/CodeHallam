

import 'package:codehallam/src/common_widget/empty_place_holder_widget.dart';
import 'package:flutter/material.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const EmptyPlaceholderWidget(
        message: '404 - Page not found',
      ),
    );
  }
}
