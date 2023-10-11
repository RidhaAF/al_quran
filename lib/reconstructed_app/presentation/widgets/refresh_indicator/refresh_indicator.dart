import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../injection.dart';

class DefaultRefreshIndicator extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget child;
  DefaultRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  final CustomFunctions func = di<CustomFunctions>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: onRefresh,
      color: DefaultStyle.primaryColor,
      backgroundColor: func.getContainerColor(context),
      child: child,
    );
  }
}
