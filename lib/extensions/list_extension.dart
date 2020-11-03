extension ListExtension on List {
  List compact() {
    return this
      ..removeWhere((final dynamic element) {
        return element == null;
      });
  }
}
