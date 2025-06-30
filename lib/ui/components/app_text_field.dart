import 'dart:ui' show ImageFilter;
import 'package:flutter/material.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../style/theme/typography/typography.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final bool autofocus;

  const AppTextField({
    super.key,
    this.hintText,
    this.autofocus = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRSuperellipse(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Material(
          shape: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: context.colorScheme.containerMedium,
          child: SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ?prefixIcon,
                  if (prefixIcon != null) const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      autofocus: autofocus,
                      style: AppTextStyles.body.copyWith(
                        color: context.colorScheme.textPrimary,
                      ),
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: AppTextStyles.body.copyWith(
                          color: context.colorScheme.textDisabled,
                        ),
                        hintFadeDuration: const Duration(milliseconds: 300),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
