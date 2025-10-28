import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
                title: Text('Hi Lezzy'),
                subtitle: Text('Find your lessons today!')),
          ],
        ),
      ),
    );
  }
}
