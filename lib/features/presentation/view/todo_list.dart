import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/module.dart';

class TododsList extends ConsumerWidget {
  const TododsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: const Center(
        child: Text('Todo List'),
      ),
    );
  }
}
