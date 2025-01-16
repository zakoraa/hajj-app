import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hajj_umrah_accessories/core/constants/assets/icon_asset_constant.dart';
import 'package:hajj_umrah_accessories/core/constants/common/size_constant.dart';
import 'package:hajj_umrah_accessories/core/styles/colors/app_color.dart';

import '../../../../core/utils/lang.dart';
import '../../../common/common/widgets/svg_asset.dart';
import '../view_models/bottom_navbar_view_model.dart';

class BottomNavbar extends ConsumerStatefulWidget {
  const BottomNavbar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends ConsumerState<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    final bottomNavbarList = [
      {Lang.of(context).chat: IconAssetConstant.chat},
      {Lang.of(context).call: IconAssetConstant.call},
      {Lang.of(context).profile: IconAssetConstant.profile},
    ];
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: SizeConstant.bottomNavbarHeight,
        color: AppColor.backgroundApp(context),
        child: Row(
          children: List.generate(
            bottomNavbarList.length,
            (index) => _buildBotNavItem(context, index, bottomNavbarList),
          ),
        ),
      ),
    );
  }

  Widget _buildBotNavItem(BuildContext context, int index,
      List<Map<String, String>> bottomNavbarList) {
    final selectedTabIndex = ref.watch(bottomNavbarViewModelProvider);
    final viewModel = ref.read(bottomNavbarViewModelProvider.notifier);
    final item = bottomNavbarList.elementAt(index);
    return GestureDetector(
      onTap: () => viewModel.selectTab(index),
      child: Container(
        height: SizeConstant.bottomNavbarHeight,
        width: 1.sw / 3,
        color: AppColor.backgroundApp(context),
        child: SvgAsset(
          asset: item.values.first,
          margin: 15,
          color: selectedTabIndex == index
              ? AppColor.primary(context)
              : AppColor.disableTextOrIcon(context),
        ),
      ),
    );
  }
}
