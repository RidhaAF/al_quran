import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/core.dart';
import '../../../injection.dart';

class ListViewShimmer extends StatelessWidget {
  const ListViewShimmer({super.key, this.itemCount});

  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: DefaultStyle.defaultMargin),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount ?? 20,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          return ListTile(
            leading: ShimmerBox(
              width: 16,
              height: 16,
              borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
            ),
            title: ShimmerBox(
              width: 32,
              height: 16,
              borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
            ),
            subtitle: ShimmerBox(
              width: 64,
              height: 12,
              borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
            ),
            trailing: ShimmerBox(
              width: 96,
              height: 16,
              borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
            ),
            dense: true,
            contentPadding: EdgeInsets.symmetric(
                horizontal: DefaultStyle.defaultMargin / 2),
          );
        },
      ),
    );
  }
}

class ShimmerBox extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;
  ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  final CustomFunctions func = di<CustomFunctions>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: borderRadius == null
          ? _shimmer(context)
          : ClipRRect(
              borderRadius: borderRadius!,
              child: _shimmer(context),
            ),
    );
  }

  Widget _shimmer(context) {
    return Shimmer.fromColors(
      baseColor: func.isDarkMode(context)
          ? DefaultStyle.bgColorDark6
          : DefaultStyle.primaryColor.withOpacity(0.5),
      highlightColor: func.isDarkMode(context)
          ? DefaultStyle.primaryColor
          : DefaultStyle.secondaryColor,
      child: Container(
        color: DefaultStyle.mutedColor,
      ),
    );
  }
}
