import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/constants/assets/image_asset_constant.dart';
import 'package:hajj_umrah_accessories/core/styles/colors/app_color.dart';
import 'package:hajj_umrah_accessories/core/styles/fonts/app_font.dart';

import '../../../../core/utils/lang.dart';

class ChatCard extends StatelessWidget {
  final String? profilePicture;
  final String name;
  final String previewChat;
  final String chatTime;
  final int? unreadChatCount;
  final bool shownStartIcon;
  final bool isAnnouncement;
  final bool shownBottomOutline;
  const ChatCard({
    super.key,
    this.profilePicture,
    required this.name,
    required this.previewChat,
    required this.chatTime,
    this.unreadChatCount,
    this.shownStartIcon = false,
    this.isAnnouncement = false,
    this.shownBottomOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  profilePicture ?? ImageAssetConstant.defaultProfile,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(name, style: AppFont.titleMedium(context),)
                    ],
                  ),
                  Row(
                    children: [],
                  )
                ],
              )
            ],
          ),
          if (shownBottomOutline) ...[
            Divider(color: AppColor.outlineLightGrey(context))
          ]
        ],
      ),
    );
  }
}
