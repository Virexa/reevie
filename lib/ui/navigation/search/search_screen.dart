import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/components/app_text_field.dart';
import 'package:reevie/ui/components/buttons/blur_icon_button.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
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
                      child: AppTextField(
                        hintText: "Search",
                        autofocus: true,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: 24,
                          color: context.colorScheme.textDisabled,
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
