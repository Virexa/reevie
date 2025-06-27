import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reevie/ui/components/animations/on_tap_scale.dart';
import 'package:reevie/ui/extensions/context_extension.dart';

class BlurIconButton extends StatelessWidget {
  final Widget icon;
  final void Function()? onTap;

  const BlurIconButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OnTapScale(
      onTap: onTap,
      child: ClipRSuperellipse(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: context.colorScheme.containerMedium),
            child: icon,
          ),
        ),
      ),
    );
  }
}
