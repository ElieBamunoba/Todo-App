import 'files_memeory.dart';

class FilesMemoryImpl implements FilesMemory {
  final Map<String, String> _files = {};
  @override
  Future<void> delete(String path) async {
    _files.remove(path);
  }

  @override
  Future<String?> read(String path) async {
    return _files[path];
  }

  @override
  Future<void> write(String path, String content) async {
    _files[path] = content;
    return Future.value();
  }
}
