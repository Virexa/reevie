import 'package:flutter/material.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../style/theme/typography/typography.dart';

void showSnackBar({
  Color? backgroundColor,
  required BuildContext context,
  required String text,
  Widget? icon,
  Duration duration = const Duration(seconds: 4),
}) {
  final snackBar = SnackBar(
    elevation: 0,
    margin: const EdgeInsets.all(16),
    content: Row(
      children: [
        if (icon != null) icon,
        if (icon != null) const SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: AppTextStyles.body2.copyWith(
              color: context.colorScheme.textPrimary,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
    backgroundColor: backgroundColor ?? context.colorScheme.containerMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
    duration: duration,
  );
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Future<void> showCustomSnackBar({
  required BuildContext context,
  required String text,
  Widget? icon,
  Color? backgroundColor,
  Duration duration = const Duration(seconds: 4),
}) async {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Align(
      alignment: Alignment(0, 0.9),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? context.colorScheme.containerMedium,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              children: [
                if (icon != null) icon,
                if (icon != null) const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    text,
                    style: AppTextStyles.body2.copyWith(
                      color: context.colorScheme.textPrimary,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  await Future.delayed(duration);

  overlayEntry.remove();
}
