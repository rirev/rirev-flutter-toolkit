import 'package:clipboard/clipboard.dart';
import 'package:meta/meta.dart';

class Clipboard {
  static final Clipboard instance = Clipboard._();

  Clipboard._();

  void copy({
    @required final String content,
  }) {
    FlutterClipboard.copy(content);
  }
  
  void paste({
    @required final String content,
  }) {
    FlutterClipboard.paste();
  }
}
