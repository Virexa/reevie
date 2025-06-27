import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _notifier.increment,
              child: Text('Increment'),
            ),
            Text(state.count.toString()),
            ElevatedButton(
              onPressed: _notifier.decrement,
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
