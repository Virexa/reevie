import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/components/buttons/blur_icon_button.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../style/theme/typography/typography.dart';
import 'components/search_result_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 74),
              SearchResultItem(),
              SearchResultItem(),
              SearchResultItem(),
              SearchResultItem(),
              SearchResultItem(),
            ],
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
                children: [
                  BlurIconButton(
                    onTap: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                      color: context.colorScheme.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Hero(
                      tag: "search",
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
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: context.colorScheme.textDisabled,
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: TextField(
                                      autofocus: true,
                                      style: AppTextStyles.body.copyWith(
                                        color: context.colorScheme.textPrimary,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: AppTextStyles.body.copyWith(
                                          color:
                                              context.colorScheme.textDisabled,
                                        ),
                                        hintFadeDuration: const Duration(
                                          milliseconds: 300,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
