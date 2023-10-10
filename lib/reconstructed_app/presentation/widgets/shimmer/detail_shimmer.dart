import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../presentation.dart';

class SurahDetailShimmer extends StatelessWidget {
  const SurahDetailShimmer({super.key, this.itemCount});

  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(DefaultStyle.defaultMargin),
          margin: EdgeInsets.all(DefaultStyle.defaultMargin),
          decoration: BoxDecoration(
            color: DefaultStyle.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
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
                  SizedBox(height: DefaultStyle.defaultMargin / 2),
                  Row(
                    children: [
                      Expanded(
                        child: ShimmerBox(
                          width: 32,
                          height: 24,
                          borderRadius:
                              BorderRadius.circular(DefaultStyle.defaultRadius),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: DefaultStyle.defaultMargin / 2),
                  ShimmerBox(
                    width: 256,
                    height: 16,
                    borderRadius:
                        BorderRadius.circular(DefaultStyle.defaultRadius),
                  ),
                  SizedBox(height: DefaultStyle.defaultMargin / 2),
                  ShimmerBox(
                    width: 128,
                    height: 12,
                    borderRadius:
                        BorderRadius.circular(DefaultStyle.defaultRadius),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
