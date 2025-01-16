import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAsset extends StatelessWidget {
  final String asset;
  final Color? color;
  final double margin;
  const SvgAsset(
      {super.key, required this.asset, this.color, this.margin = 19});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin),
      child: SvgPicture.asset(
        asset,
        colorFilter:
            color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
      ),
    );
  }
}