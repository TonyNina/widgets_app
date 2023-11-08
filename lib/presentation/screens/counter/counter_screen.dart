import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/screens/provider/theme_provider.dart';
import 'package:widgets_app/presentation/screens/provider/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDrakmodeProvider);

    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(onPressed: () {
            ref.read(isDrakmodeProvider.notifier).update((isDarkmode) => !isDarkmode);
          }, icon: Icon( isDarkmode ? Icons.dark_mode_rounded : Icons.light_mode_rounded)),
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter ',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
