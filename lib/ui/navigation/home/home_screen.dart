import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reevie/ui/components/animations/on_tap_scale.dart';
import 'package:reevie/ui/components/buttons/blur_icon_button.dart';
import 'package:reevie/ui/components/card_carousel.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import 'package:reevie/ui/navigation/home/components/get_premium_card.dart';
import 'package:reevie/ui/navigation/home/components/movie_component.dart';
import 'package:reevie/ui/navigation/routes.dart';
import '../../../style/theme/typography/typography.dart';
import 'components/movie_category_component.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRSuperellipse(
                    borderRadius: BorderRadius.circular(20),
                    child: OnTapScale(
                      onTap: () {
                        //Todo: navigate to profile
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: context.colorScheme.containerMedium,
                        ),
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: context.colorScheme.textPrimary,
                          size: 24,
                        ),
                      ),
                    ),
                  ),

                  BlurIconButton(
                    icon: Icon(
                      Icons.menu,
                      color: context.colorScheme.textPrimary,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 16),
                children: [
                  GetPremiumCard(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "Popular",
                          style: AppTextStyles.header3.copyWith(
                            color: context.colorScheme.textPrimary,
                          ),
                        ),
                      ),
                      OnTapScale(
                        onTap: () {},
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
                  MovieCarousel(
                    itemCount: 10,
                    builder: (index, isOnCenter) =>
                        MovieComponent(height: 400, onTap: () {}),
                  ),
                  const SizedBox(height: 24),
                  MovieCategoryComponent(
                    title: "New Release",
                    onViewAllTap: () {},
                    onMovieTap: () {
                      MovieDetailRoute(id: "movie").push(context);
                    },
                  ),
                  const SizedBox(height: 24),
                  MovieCategoryComponent(
                    title: "Sci-Fi",
                    onViewAllTap: () {},
                    onMovieTap: () {
                      MovieDetailRoute(id: "movie").push(context);
                    },
                  ),
                  const SizedBox(height: 24),
                  MovieCategoryComponent(
                    title: "Action",
                    onViewAllTap: () {},
                    onMovieTap: () {
                      MovieDetailRoute(id: "movie").push(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
