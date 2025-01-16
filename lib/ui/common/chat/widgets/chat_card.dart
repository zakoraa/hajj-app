import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/assets/icon_asset_constant.dart';
import '../../../../core/constants/assets/image_asset_constant.dart';
import '../../../../core/styles/colors/app_color.dart';
import '../../../../core/styles/fonts/app_font.dart';
import '../../common/widgets/svg_asset.dart';

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
    double photoProfileSize = isAnnouncement ? 35.w : 40.w;
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                spacing: 10.w,
                children: [
                  ClipOval(
                    child: Image.asset(
                      profilePicture ?? ImageAssetConstant.defaultProfile,
                      height: photoProfileSize,
                      width: photoProfileSize,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  name,
                                  style: AppFont.titleMedium(context),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(chatTime, style: AppFont.bodyMedium(context))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (shownStartIcon) ...[
                                SvgAsset(
                                  asset: IconAssetConstant.readStatus,
                                  size: 15,
                                  color: unreadChatCount != null
                                      ? AppColor.disableTextOrIcon(context)
                                      : AppColor.secondary(context),
                                ),
                              ],
                              Expanded(
                                child: Text(
                                  previewChat,
                                  style: AppFont.bodyMedium(context),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              if (unreadChatCount != null) ...[
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.secondary(context),
                                  ),
                                  child: Text(
                                    "$unreadChatCount",
                                    style:
                                        AppFont.bodySmall(context)?.onSecondary,
                                  ),
                                )
                              ]
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            if (shownBottomOutline) ...[
              Divider(color: AppColor.outlineLightGrey(context))
            ]
          ],
        ),
      ),
    );
  }
}
