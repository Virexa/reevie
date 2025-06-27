import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/style/theme/typography/typography.dart';
import 'package:reevie/ui/components/buttons/chip_button.dart';
import 'package:reevie/ui/components/buttons/outline_icon_button.dart';
import 'package:reevie/ui/components/buttons/primary_button.dart';
import 'package:reevie/ui/components/dot_separator.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../components/buttons/blur_icon_button.dart';
import '../home/components/movie_category_component.dart';

class MovieDetailScreen extends ConsumerStatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  ConsumerState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends ConsumerState<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: BlurIconButton(
                    onTap: (){
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: context.colorScheme.textPrimary,
                      size: 24,
                    ),
                  ),
                ),
              ),
              leadingWidth: 70,
              actions: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: BlurIconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: context.colorScheme.textPrimary,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
              expandedHeight: 250,
              collapsedHeight: 70,
              backgroundColor: Colors.transparent,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://resizing.flixster.com/dJM7TJzf7qEp9NA2Kni0Cug9myc=/206x305/v2/https://resizing.flixster.com/Wg25mLoPWxjcxXzNyaSF4VGgGE4=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2ZiNjZiNWFkLWVhNzEtNDRhMC1iNGIwLTFmY2FkNzllNTJlMi5qcGc=",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "Fantastic Beasts: The Secrets of Dumbledore",
                    style: AppTextStyles.header1.copyWith(
                      color: context.colorScheme.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "8.0",
                        style: AppTextStyles.body2.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: context.colorScheme.textSecondary,
                        size: 18,
                      ),
                      DotSeparator(),
                      Text(
                        "2h 36 min",
                        style: AppTextStyles.body2.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                      DotSeparator(),
                      Text(
                        "2022",
                        style: AppTextStyles.body2.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    spacing: 8,
                    children: [
                      ...["Fantastic", "Action"].map((e) => ChipButton(text: e)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      PrimaryButton(
                        onTap: () {
                          //TODO: On Watch Movie
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          size: 24,
                          color: context.colorScheme.textPrimary,
                        ),
                        title: "Watch Movie",
                      ),
                      Spacer(),
                      OutlineIconButton(
                        onTap: () {
                          //TODO: On Download Movie
                        },
                        icon: Icon(
                          Icons.download,
                          color: context.colorScheme.textPrimary,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      OutlineIconButton(
                        onTap: () {
                          //TODO: On Share Movie
                        },
                        icon: Icon(
                          Icons.share,
                          color: context.colorScheme.textPrimary,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: AppTextStyles.body.copyWith(
                      color: context.colorScheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            MovieCategoryComponent(title: "Similar Movies"),
          ],
        ),
      ), //   ListView(
    );
  }
}
