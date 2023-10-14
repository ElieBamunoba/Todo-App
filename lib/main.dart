import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/presentation/app.dart';

void main() {
  runApp(const ProviderScope(child: TodoApp()));
}
