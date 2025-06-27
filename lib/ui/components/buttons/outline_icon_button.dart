import 'package:flutter/material.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../animations/on_tap_scale.dart';

class OutlineIconButton extends StatelessWidget {
  final Widget icon;
  final void Function()? onTap;

  const OutlineIconButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OnTapScale(
      onTap: onTap,
      child: Material(
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: context.colorScheme.outline),
        ),
        child: SizedBox(height: 50, width: 50, child: Center(child: icon)),
      ),
    );
  }
}
