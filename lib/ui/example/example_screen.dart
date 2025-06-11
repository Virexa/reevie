import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movirex/style/theme/typography/typography.dart';
import 'package:movirex/ui/example/example_state_notifier.dart';
import 'package:movirex/ui/extensions/context_extension.dart';

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
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _notifier.increment,
            child: Text(
              "Increment",
              style: AppTextStyles.button.copyWith(
                color: context.colorScheme.onPrimary,
              ),
            ),
          ),
          Text(
            "Count: ${state.count}",
            style: AppTextStyles.header1.copyWith(
              color: context.colorScheme.textPrimary,
            ),
          ),
          ElevatedButton(
            onPressed: _notifier.decrement,
            child: Text(
              "Decrement",
              style: AppTextStyles.button.copyWith(
                color: context.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
