import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_file/open_file.dart';
import 'package:meta/meta.dart';

class Launcher {
  static final Launcher instance = Launcher._();

  Launcher._();

  Future<void> launchUrl({
    @required final String url,
  }) async {
    await launch(url);
  }

  void openFile({
    @required final File file,
  }) {
    OpenFile.open(file.path);
  }

  Future<void> placeCall({
    @required final String mobile,
  }) async {
    await launch(['tel', mobile].join(':'));
  }
}
