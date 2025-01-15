import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../screens/tabs/call_tab.dart';
import '../screens/tabs/chat_tab.dart';
import '../screens/tabs/monitoring_tab.dart';
import '../screens/tabs/profile_tab.dart';

part 'bottom_navbar_view_model.g.dart';

@riverpod
class BottomNavbarViewModel extends _$BottomNavbarViewModel {
  late final TabController tabController;
  final List<Widget> tabs = [ChatTab(), MonitoringTab(), CallTab(), ProfileTab(), ];
  
  @override
  void build() {}

  void initialize(TickerProvider vsync) {
    tabController = TabController(length: tabs.length, vsync: vsync);
  }

  int get selectedTabIndex => tabController.index;
}
