import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reevie/style/theme/typography/typography.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../components/animations/on_tap_scale.dart';

class OnboardContent {
  final String title;
  final String description;
  final String image;
  final String actionTitle;
  final void Function() actionTap;

  OnboardContent({
    required this.title,
    required this.description,
    required this.image,
    required this.actionTap,
    required this.actionTitle,
  });
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<OnboardContent> onboardContents = [
      OnboardContent(
        title: "YOUR CINEMA, ANYTIME",
        description:
            "Dive into a world of movies and shows at your fingertips. Watch anywhere, anytime — no tickets needed.",
        image:
            "https://cdn.moviefone.com/admin-uploads/posters/65-movie-poster_1671108379.jpg?d=360x540&q=80",
        actionTap: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        actionTitle: "Continue",
      ),
      OnboardContent(
        title: "STREAM. DISCOVER. REPEAT.",
        description:
            "From trending blockbusters to hidden gems — explore a universe of entertainment curated just for you.",
        image:
            "https://m.media-amazon.com/images/M/MV5BZTAzODc1ZjUtNGQwZS00YTc2LTliNzQtMDdlNzllNmU5Yzk4XkEyXkFqcGc@._V1_.jpg",
        actionTap: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        actionTitle: "Continue",
      ),
      OnboardContent(
        title: "FEEL THE REEL MAGIC",
        description:
            "Experience high-quality streaming with stunning visuals, seamless playback, and stories that move you.",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdSMROV-tc6P_Tnj-loNaJ-YcXhMXpsTZzKg&s",
        actionTap: () {},
        actionTitle: "Get Started",
      ),
    ];
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardContents.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 0;
                if (_pageController.position.haveDimensions) {
                  value = _pageController.page! - index;
                }
                final double parallax =
                    (value * MediaQuery.of(context).size.width / 2);

                return Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.expand,
                  children: [
                    Transform.translate(
                      offset: Offset(parallax, 0),
                      child: Image.network(
                        onboardContents[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Overlay gradient for readability
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            context.colorScheme.surface,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            onboardContents[index].title,
                            style: AppTextStyles.header1.copyWith(
                              color: context.colorScheme.textPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            onboardContents[index].description,
                            style: AppTextStyles.header3.copyWith(
                              color: context.colorScheme.textSecondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 40),
                          OnTapScale(
                            onTap: onboardContents[index].actionTap,
                            child: ClipRSuperellipse(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 15,
                                  sigmaY: 15,
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.containerMedium,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        onboardContents[index].actionTitle,
                                        style: AppTextStyles.subtitle2.copyWith(
                                          color:
                                              context.colorScheme.textPrimary,
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Icon(
                                        Icons.navigate_next,
                                        size: 24,
                                        color: context.colorScheme.textPrimary,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
