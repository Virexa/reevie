import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../style/theme/typography/typography.dart';
import '../../components/buttons/blur_icon_button.dart';
import 'components/category_item.dart';

class CategoryScreen extends StatefulWidget {
  final String title;

  const CategoryScreen({super.key, required this.title});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 78),
              CategoryItem(),
              CategoryItem(),
              CategoryItem(),
              CategoryItem(),
              CategoryItem(),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [context.colorScheme.surface, Colors.transparent],
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
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.title,
                      style: AppTextStyles.header3.copyWith(
                        color: context.colorScheme.textPrimary,
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
