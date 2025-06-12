import 'package:flutter/cupertino.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../style/theme/typography/typography.dart';

class PlaceHolderScreen extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;

  const PlaceHolderScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 40),
            Text(
              title,
              style: AppTextStyles.header3.copyWith(
                color: context.colorScheme.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: AppTextStyles.body.copyWith(
                color: context.colorScheme.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
