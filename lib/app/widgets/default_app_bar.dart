import 'dart:io';

import 'package:al_quran/app/utilities/constants.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget>? actions;
  final TextStyle? style;
  final Color? backgroundColor;
  final bool centerTitle;
  final double? elevation;
  const DefaultAppBar({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.actions,
    this.style,
    this.backgroundColor,
    this.centerTitle = true,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: subtitle == null
          ? Text(
              title ?? '',
              style: style != null ? style! : null,
              textScaleFactor: 1.0,
            )
          : Column(
              crossAxisAlignment: Platform.isAndroid
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Text(
                  title ?? '',
                  style: style != null ? style! : null,
                  textScaleFactor: 1.0,
                ),
                Text(
                  subtitle ?? '',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: secondaryColor,
                      ),
                  textScaleFactor: 1.0,
                ),
              ],
            ),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor ?? primaryColor,
      centerTitle:
          centerTitle ? (Platform.isAndroid ? false : true) : centerTitle,
      elevation: elevation ?? 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
