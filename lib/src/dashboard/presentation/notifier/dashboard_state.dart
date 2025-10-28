// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:codehallam/src/features/explore/presentation/explore_screen.dart';
import 'package:codehallam/src/features/home/presentation/home_screen.dart';
import 'package:codehallam/src/routing/routes.dart';
import 'package:flutter/material.dart';

class DashboardState {
  int currentIndex;
  List<Widget> pages;
  List<Icon> icons;
  DashboardState({
    required this.currentIndex,
    required this.pages,
    required this.icons,
  });

  factory DashboardState.initial(){
    return DashboardState(currentIndex: 0, pages: [
      HomeScreen(), ExploreScreen(), MyLearningScreen(), ProfileScreen()
    ], icons: [
      Icon(Icons.home),
      Icon(Icons.explore),
      Icon(Icons.play_lesson),
      Icon(Icons.person)
    ]);
  }

  DashboardState copyWith({
    int? currentIndex,
    List<Widget>? pages,
    List<Icon>? icons,
  }) {
    return DashboardState(
      currentIndex: currentIndex ?? this.currentIndex,
      pages: pages ?? this.pages,
      icons: icons ?? this.icons,
    );
  }
}
