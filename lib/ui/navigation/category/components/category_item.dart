import 'package:flutter/material.dart';
import 'package:reevie/ui/components/animations/on_tap_scale.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../../style/theme/typography/typography.dart';
import '../../../components/buttons/chip_button.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return OnTapScale(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 260,
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.colorScheme.containerMedium,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "After Life",
                        style: AppTextStyles.header3.copyWith(
                          color: context.colorScheme.textPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "8.0",
                      style: AppTextStyles.body.copyWith(
                        color: context.colorScheme.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  "2h 36 min • 2022",
                  style: AppTextStyles.body.copyWith(
                    color: context.colorScheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    ...["Fantastic", "Action"].map(
                      (e) => ChipButton(text: e, style: AppTextStyles.caption),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
