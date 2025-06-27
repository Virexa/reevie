import 'package:flutter/material.dart';
import 'package:reevie/style/theme/typography/typography.dart';
import 'package:reevie/ui/components/animations/on_tap_scale.dart';
import 'package:reevie/ui/extensions/context_extension.dart';

class PrimaryButton extends StatelessWidget {
  final Widget? icon;
  final String title;
  final void Function()? onTap;

  const PrimaryButton({super.key, this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OnTapScale(
      onTap: onTap,
      child: Material(
        color: context.colorScheme.primary,
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ?icon,
                  if (icon != null) const SizedBox(width: 8),
                  Text(
                    title,
                    style: AppTextStyles.button.copyWith(
                      color: context.colorScheme.onPrimary,
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
