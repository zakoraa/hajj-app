import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hajj_umrah_accessories/core/constants/assets/icon_asset_constant.dart';
import 'package:hajj_umrah_accessories/core/constants/assets/image_asset_constant.dart';
import 'package:hajj_umrah_accessories/core/utils/lang.dart';
import 'package:hajj_umrah_accessories/ui/common/chat/widgets/chat_card.dart';
import 'package:hajj_umrah_accessories/ui/common/common/widgets/svg_asset.dart';

import '../../../../../core/constants/common/margin_constant.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chatList = [
      {
        "photoProfile": ImageAssetConstant.announcement,
        "name": Lang.of(context).announcement,
        "previewChat":
            "Saya ingin mengingatkan jadwal kita hari ini:1️⃣ Shalat Subuh berjamaah di Masjidil Haram pukul 05.00.2️⃣ Thawaf Wada’ dimulai pukul 08.00, kumpul di lobi hotel 15 menit sebelumnya.3️⃣ Istirahat dan persiapan kepulangan pukul 12.00.",
        "chatTime": "20:20",
        "unreadChatCount": null,
      },
      {
        "photoProfile": null,
        "name": Lang.of(context).group,
        "previewChat":
            "Assalamualaikum warahmatullahi wabarakatuh, Bapak/Ibu Jamaah Haji. Semoga selalu sehat dan dalam lindungan Allah SWT. 😊",
        "chatTime": "20:20",
        "unreadChatCount": 2,
      },
      {
        "photoProfile": null,
        "name": "Zavier Fedora",
        "previewChat":
            "Waalaikumsalam, Ustadz. Terima kasih. Apakah saat Thawaf Wada’ kita perlu membawa barang-barang pribadi?",
        "chatTime": "20:20",
        "unreadChatCount": null,
      },
      {
        "photoProfile": null,
        "name": "Joko",
        "previewChat":
            "Tidak perlu, Pak Joko. Barang-barang bisa ditinggal di hotel. Cukup bawa ID Jamaah dan perlengkapan ibadah.",
        "chatTime": "20:20",
        "unreadChatCount": null,
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MarginConstant.horizontalScreen.w,
      ),
      child: Column(
        spacing: 10,
        children: [
          SizedBox.shrink(),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              ImageAssetConstant.appLogo,
              height: 60.w,
              width: 60.w,
            ),
          ),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: Lang.of(context).search,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgAsset(
                  asset: IconAssetConstant.search,
                ),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) => _buildChatCard(index, chatList),
            ),
          ),
        ],
      ),
    );
  }

  ChatCard _buildChatCard(int index, List<Map<String, dynamic>> chatList) {
    final item = chatList.elementAt(index);
    return ChatCard(
      name: item["name"],
      previewChat: item["previewChat"],
      chatTime: item["chatTime"],
      isAnnouncement: index == 0 ? true : false,
      profilePicture: index == 0 ? ImageAssetConstant.announcement : null,
      shownStartIcon: index == 0 ? false : true,
      unreadChatCount: item["unreadChatCount"],
    );
  }
}
