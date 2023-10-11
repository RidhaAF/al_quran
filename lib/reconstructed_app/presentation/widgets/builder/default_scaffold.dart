import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';

class DefaultScaffold extends StatefulWidget {
  const DefaultScaffold({
    super.key,
    required this.title,
    this.subtitle,
    required this.body,
    this.isEnglish = true,
    this.style,
    this.backgroundColor,
  });

  final String title;
  final String? subtitle;
  final Widget? body;
  final bool isEnglish;
  final TextStyle? style;
  final Color? backgroundColor;

  @override
  State<DefaultScaffold> createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  bool isEnglish = true;

  _getTranslation() {
    isEnglish = context.read<TranslateCubit>().getTranslation();
    setState(() {});
  }

  _handleTranslation() {
    isEnglish = context.read<TranslateCubit>().setTranslation();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getTranslation();
  }

  @override
  Widget build(BuildContext context) {
    isEnglish = widget.isEnglish;
    return Scaffold(
      appBar: DefaultAppBar(
        title: widget.title,
        subtitle: widget.subtitle,
        actions: [
          BlocListener<TranslateCubit, TranslateState>(
            listener: (context, state) {
              state.whenOrNull(
                loaded: (isEnglishCubit) {
                  isEnglish = isEnglishCubit;
                  setState(() {});
                },
              );
            },
            child: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {
                log('isEnglish: $isEnglish');
                _handleTranslation();
              },
            ),
          ),
        ],
        style: widget.style,
        backgroundColor: widget.backgroundColor,
      ),
      body: widget.body,
    );
  }
}
