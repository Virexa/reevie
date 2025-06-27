import 'package:flutter/cupertino.dart';
import 'package:reevie/style/theme/typography/typography.dart';
import 'package:reevie/ui/extensions/context_extension.dart';

class ChipButton extends StatelessWidget {
  final TextStyle? style;
  final String text;

  const ChipButton({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.colorScheme.secondary,
      ),
      child: Text(
        text,
        style: (style ?? AppTextStyles.body2).copyWith(
          color: context.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
