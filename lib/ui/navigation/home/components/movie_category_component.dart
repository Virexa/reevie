import 'package:flutter/cupertino.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../../style/theme/typography/typography.dart';
import '../../../components/animations/on_tap_scale.dart';
import 'movie_component.dart';

class MovieCategoryComponent extends StatelessWidget {
  final String title;
  final void Function()? onViewAllTap;
  final void Function()? onMovieTap;

  const MovieCategoryComponent({
    super.key,
    required this.title,
    this.onViewAllTap,
    this.onMovieTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: AppTextStyles.header3.copyWith(
                  color: context.colorScheme.textPrimary,
                ),
              ),
            ),
            if (onViewAllTap != null)
              OnTapScale(
                onTap: onViewAllTap,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "View All",
                    style: AppTextStyles.button.copyWith(
                      color: context.colorScheme.textSecondary,
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => MovieComponent(onTap: onMovieTap),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
    );
  }
}
