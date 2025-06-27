import 'package:flutter/cupertino.dart';
import 'package:reevie/ui/extensions/context_extension.dart';

class DotSeparator extends StatelessWidget {
  final double size;
  final Color? color;

  const DotSeparator({super.key, this.size = 4, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color ?? context.colorScheme.textSecondary,
        shape: BoxShape.circle,
      ),
    );
  }
}
