import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/another_demo/future/test_future_screen.dart';
import 'package:riverpod_demo/another_demo/state/provider.dart';

class TestStateScreen extends ConsumerWidget {
  const TestStateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchCounterProvider = ref.watch(counterStateProvider);
    final readCounterProvider = ref.read(counterStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('TestState'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Count: $watchCounterProvider'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                readCounterProvider.update((state) => state + 1);
              }, child: const Text('Increment')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TestFutureScreen()));
              }, child: const Text('Go to Future')),
            ),
          ],
        ),
      ),
    );
  }
}
