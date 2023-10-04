import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'file_memory_impl.dart';
import 'files_memeory.dart';

final filesProvider = Provider<FilesMemory>((ref) {
  return FilesMemoryImpl();
});
