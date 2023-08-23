import 'dart:io';

import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final TextStyle? style;
  final Color? backgroundColor;
  final bool centerTitle;
  final double? elevation;
  const DefaultAppBar({
    super.key,
    required this.title,
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
      title: Text(
        title ?? '',
        style: style != null ? style! : null,
        textScaleFactor: 1.0,
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
