import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

Widget listViewSeparatedShimmer({int? itemCount}) {
  return ListView.separated(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: itemCount ?? 20,
    separatorBuilder: (context, index) => const Divider(height: 0),
    itemBuilder: (context, index) {
      return ListTile(
        leading: ShimmerBox(
          width: 16,
          height: 16,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        title: ShimmerBox(
          width: 32,
          height: 16,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        subtitle: ShimmerBox(
          width: 64,
          height: 12,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        trailing: ShimmerBox(
          width: 96,
          height: 16,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
      );
    },
  );
}
