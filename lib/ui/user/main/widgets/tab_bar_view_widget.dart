import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/bottom_navbar_view_model.dart';

class TabBarViewWidget extends ConsumerStatefulWidget {
  const TabBarViewWidget({super.key});

  @override
  ConsumerState<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends ConsumerState<TabBarViewWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    ref.read(bottomNavbarViewModelProvider.notifier).initialize(this);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch(bottomNavbarViewModelProvider.notifier);
    final selectedTabIndex = ref.watch(bottomNavbarViewModelProvider);
    final tabController = viewModel.tabController;
    final tabs = viewModel.tabs;

    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      viewportFraction: 1,
      controller: tabController,
      children: List.generate(
        tabs.length,
        (index) => tabs[selectedTabIndex],
      ),
    );
  }
}
