// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hajj_umrah_accessories/core/constants/common/size_constant.dart';

// class BottomNavbar extends ConsumerStatefulWidget {
//   const BottomNavbar({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _BottomNavbarState();
// }

// class _BottomNavbarState extends ConsumerState<BottomNavbar> {

//   @override
//   Widget build(BuildContext context) {
//     return  Positioned(
//       bottom: 0,
//       child: Container(
//         width: MediaQuery.sizeOf(context).width,
//         height: SizeConstant.bottomNavbarHeight,
//         // color: App,
//         child: Row(
//           children: List.generate(
//             controller.bottomNavbarList.length,
//             (index) => _buildBotNavItem(index, context),
//           ),
//         ),
//       ),
//     );
//   }
// }