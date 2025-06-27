import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reevie/ui/components/animations/on_tap_scale.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../../style/theme/typography/typography.dart';
import '../../../components/buttons/chip_button.dart';

class MovieComponent extends StatelessWidget {
  final double height;
  final double width;
  final void Function()? onTap;

  const MovieComponent({
    super.key,
    this.onTap,
    this.height = 250,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return OnTapScale(
      onTap: onTap,
      child: Container(
        alignment: Alignment.bottomCenter,
        height: height,
        width: width,
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
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.colorScheme.containerMedium,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "After Life",
                          style: AppTextStyles.subtitle1.copyWith(
                            color: context.colorScheme.textPrimary,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        "8.0",
                        style: AppTextStyles.body2.copyWith(
                          color: context.colorScheme.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.star, color: Colors.yellow, size: 18),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      ...["Fantastic", "Action"].map(
                        (e) =>
                            ChipButton(text: e, style: AppTextStyles.caption),
                      ),
                    ],
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
