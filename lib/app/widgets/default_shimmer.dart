import 'package:al_quran/app/utilities/constants.dart';
import 'package:al_quran/app/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

Widget listViewSeparatedShimmer({int? itemCount}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
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
    ),
  );
}

Widget surahDetailShimmer({int? itemCount}) {
  return ListView(
    children: [
      Container(
        padding: EdgeInsets.all(defaultMargin),
        margin: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemCount ?? 20,
          separatorBuilder: (context, i) => const Divider(),
          itemBuilder: (context, i) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: defaultMargin / 2),
                Row(
                  children: [
                    Expanded(
                      child: ShimmerBox(
                        width: 32,
                        height: 24,
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: defaultMargin / 2),
                ShimmerBox(
                  width: 256,
                  height: 16,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                SizedBox(height: defaultMargin / 2),
                ShimmerBox(
                  width: 128,
                  height: 12,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}
