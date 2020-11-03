import 'package:rirev_flutter_toolkit/extensions/object_extension.dart';
import 'package:intl/intl.dart';

extension IntExtension on int {
  String toFormattedString() {
    if (this.blank()) {
      return null;
    } else {
      return NumberFormat.decimalPattern(
        'en-US',
      ).format(this);
    }
  }
}
