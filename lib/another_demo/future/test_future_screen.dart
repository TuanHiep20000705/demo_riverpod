import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/another_demo/future/photo_model.dart';
import 'package:riverpod_demo/another_demo/future/provider.dart';

class TestFutureScreen extends ConsumerWidget {
  const TestFutureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Photo>> photos = ref.watch(photoFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Future'),
      ),
      body: photos.when(data: (photos) {
        return ListView.builder(
            itemCount: photos.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(photos[index].thumbnailUrl!),
                ),
                title: Text('${photos[index].title}'),
              );
            }
        );
      },
          error: (err, stack) =>
              Center(child: Text('Error: ${err.toString()}')),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
