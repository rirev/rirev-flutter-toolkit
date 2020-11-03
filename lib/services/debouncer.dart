import 'dart:async';

class Debouncer {
  final Duration duration;

  Debouncer({
    final this.duration = const Duration(milliseconds: 300),
  });

  Timer _timer;

  call(final void Function() function) {
    _timer?.cancel();
    _timer = Timer(duration, function);
  }

  void cancel() {
    _timer?.cancel();
  }
}
