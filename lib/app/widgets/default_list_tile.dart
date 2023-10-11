import 'package:al_quran/app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultListTile extends StatelessWidget {
  final String? leading;
  final String? title;
  final String? subtitle;
  final String? trailing;
  final void Function()? onTap;
  const DefaultListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leading ?? '',
        style: Theme.of(context).textTheme.titleMedium,
        textScaleFactor: 1.0,
      ),
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.titleMedium,
        textScaleFactor: 1.0,
      ),
      subtitle: Text(
        subtitle ?? '',
        style: Theme.of(context).textTheme.labelMedium,
        textScaleFactor: 1.0,
      ),
      trailing: Text(
        trailing ?? '',
        style: GoogleFonts.scheherazadeNew(
          color: primaryColor,
          fontSize: title2FS,
        ),
        textScaleFactor: 1.0,
      ),
      onTap: onTap != null ? onTap! : null,
      splashColor: primaryColor.withOpacity(0.2),
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
