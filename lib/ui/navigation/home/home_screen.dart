import 'dart:ui';
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ListView(
            children: [
              const SizedBox(height: 82),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    context.colorScheme.surface.withValues(alpha: 0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.colorScheme.surface.withValues(alpha: 0.7),
                  Colors.transparent,
                ],
              ),
            ),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlurIconButton(
                    icon: Icon(
                      Icons.person,
                      color: context.colorScheme.textPrimary,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Hero(
                      tag: "search",
                      child: OnTapScale(
                        onTap: () {
                          SearchRoute().push(context);
                        },
                        child: ClipRSuperellipse(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: context.colorScheme.containerMedium,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: context.colorScheme.textDisabled,
                                      size: 24,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Search",
                                      style: AppTextStyles.body.copyWith(
                                        color: context.colorScheme.textDisabled,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
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
          ),
        ],
      ),
    );
  }
}
