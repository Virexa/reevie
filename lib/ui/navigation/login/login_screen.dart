import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reevie/ui/components/infinite_movie_grid.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import 'package:reevie/ui/navigation/routes.dart';
import '../../../style/theme/typography/typography.dart';
import '../../components/animations/on_tap_scale.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.expand,
        children: [
          InfiniteMovieGrid(
            imageUrls: [
              "https://m.media-amazon.com/images/M/MV5BNzgzMTQ0NTgtOGRjMi00YWIxLTk0MjYtMjYwNjM4Y2I0MThjXkEyXkFqcGc@._V1_.jpg",
              "https://cdn.europosters.eu/image/hp/116547.jpg",
              "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180",
              "https://creativereview.imgix.net/content/uploads/2024/12/AlienRomulus-scaled.jpg?auto=compress,format&q=60&w=1728&h=2560",
              "https://i.pinimg.com/originals/fb/55/dc/fb55dc632b7a7ffbabf104b1208b27fc.jpg",
              "https://i1.wp.com/www.shutterstock.com/blog/wp-content/uploads/sites/5/2024/03/Dune-movie-poster.jpg?ssl=1",
              "https://i.pinimg.com/736x/98/36/e4/9836e4e145b656371e550e1ba252a582.jpg",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah7rvAdEmDnkxXIIQ0KqbE0gjKPQvnL77xQ&s",
              "https://images-cdn.ubuy.co.in/633cae2eb5f1fa3ed74f58ac-titanic-movie-poster-leonardo-dicaprio.jpg",
              "https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/66a4263d01a185d5ea22eeef_6408f676b5811234c887ca62_top%2520gun%2520maverick-min.png",
              "https://i.redd.it/what-has-happened-to-movie-posters-v0-ujfww6wnnhb81.jpg?width=1000&format=pjpg&auto=webp&s=73af141c8cc8dad6989a41ec7b576d01a69360f5",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRITteD8Jyz5sqn2JwZNo-3Y-jDUr_PhmtodQ&s",
              "https://insessionfilm.com/wp-content/uploads/2022/09/Screen-Shot-2022-09-26-at-7.13.09-AM.png",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1_kLYwO7JIc4MXZWKUBhOl8nL24moS0fhtg&s",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAjPXI4XBPPBrY9uGnRMwKLdjngiR4PUtslA&s"
                  "https://i.pinimg.com/originals/fb/55/dc/fb55dc632b7a7ffbabf104b1208b27fc.jpg",
              "https://creativereview.imgix.net/content/uploads/2024/12/Nosferatu_05.jpg",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwxT4IHK0yp3vvOAHfnjdiGKEzc7SD2yHorA&s",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh3Zc8nSze5S8vtzX49maUGoedcdli-2aj-Q&s",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0wxjjna9KtDjBquO0cTOiXjAgfoeamUAcgw&s",
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [context.colorScheme.surface, Colors.transparent],
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [context.colorScheme.surface, Colors.transparent],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By sign in your will accept our ",
                        style: AppTextStyles.body.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: AppTextStyles.body.copyWith(
                          color: context.colorScheme.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: AppTextStyles.body.copyWith(
                          color: context.colorScheme.textSecondary,
                        ),
                      ),
                      TextSpan(
                        text: "Terms and Conditions.",
                        style: AppTextStyles.body.copyWith(
                          color: context.colorScheme.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                OnTapScale(
                  onTap: () {
                    HomeRoute().go(context);
                  },
                  child: ClipRSuperellipse(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: context.colorScheme.containerMedium,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              "assets/images/ic_google.svg",
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              "Sign in with Google",
                              style: AppTextStyles.subtitle2.copyWith(
                                color: context.colorScheme.textPrimary,
                              ),
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
      ),
    );
  }
}
