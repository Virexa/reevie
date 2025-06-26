import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../style/theme/typography/typography.dart';
import 'example_state_notifier.dart';

class ExampleScreen extends ConsumerStatefulWidget {
  const ExampleScreen({super.key});

  @override
  ConsumerState<ExampleScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<ExampleScreen> {
  late ExampleStateNotifier _notifier;

  @override
  void initState() {
    _notifier = ref.read(exampleStateNotifierProvider.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(exampleStateNotifierProvider);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://resizing.flixster.com/dJM7TJzf7qEp9NA2Kni0Cug9myc=/206x305/v2/https://resizing.flixster.com/Wg25mLoPWxjcxXzNyaSF4VGgGE4=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2ZiNjZiNWFkLWVhNzEtNDRhMC1iNGIwLTFmY2FkNzllNTJlMi5qcGc=",),fit: BoxFit.fill)
            ),
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: context.colorScheme.containerHigh
                          ),
                          child: Icon(Icons.arrow_back_ios_new,color: context.colorScheme.textPrimary,size: 24,)
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: context.colorScheme.containerHigh
                          ),
                          child: Icon(Icons.favorite_border,color: context.colorScheme.textPrimary,size: 24,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 8,
              children: [
                Text("Fantastic Beasts: The Secrets of Dumbledore",style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.textPrimary
                ),),
                Row(
                  children: [
                    Text("8,0",style: TextStyle(
                        color: context.colorScheme.textSecondary
                    ),),
                    Icon(Icons.star,color: context.colorScheme.textSecondary,size: 18,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: context.colorScheme.textSecondary,
                      ),
                    ),
                    Text("2h 36 min",style: TextStyle(
                        color: context.colorScheme.textSecondary
                    ),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: context.colorScheme.textSecondary,
                      ),
                    ),
                    Text("2022",style: TextStyle(
                        color: context.colorScheme.textSecondary
                    ),),
                  ],
                ),
                Row(
                  children: [
                    ...["Fantastic","Action"].map((e)=>Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: context.colorScheme.secondary,
                      ),
                      child: Text(e,style: TextStyle(color: context.colorScheme.textPrimary),),))
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        children: [
                          Icon(Icons.play_arrow,size: 20,color: context.colorScheme.textPrimary,),
                          Text("Watch Movie",style: TextStyle(color: context.colorScheme.textPrimary),),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: context.colorScheme.textSecondary),
                      ),
                      child: Icon(Icons.download_outlined,color: context.colorScheme.textPrimary,size: 24,),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: context.colorScheme.textSecondary),
                      ),
                      child: Icon(Icons.share,color: context.colorScheme.textPrimary,size: 24,),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(color: context.colorScheme.textSecondary),),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
