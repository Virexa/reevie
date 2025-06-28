import 'package:flutter/material.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../../style/theme/typography/typography.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 80,
            decoration: BoxDecoration(
              color: context.colorScheme.containerMedium,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "After Life",
                  style: AppTextStyles.header3.copyWith(
                    color: context.colorScheme.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "2h 36 min • 2022",
                  style: AppTextStyles.body.copyWith(
                    color: context.colorScheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
