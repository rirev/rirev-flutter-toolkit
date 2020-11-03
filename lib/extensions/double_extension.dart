import 'package:rirev_flutter_toolkit/extensions/object_extension.dart';
import 'package:intl/intl.dart';

extension DoubleExtension on double {
  static double toDouble(Object source) {
    if (source.blank()) {
      return null;
    } else if (source is double) {
      return source;
    } else if (source is int) {
      return source.toDouble();
    } else {
      return null;
    }
  }

  double roundToDecimal() {
    if (this.blank()) {
      return null;
    } else {
      return this.roundToDouble();
    }
  }

  double nullIfZero() {
    if (this.blank()) {
      return null;
    } else if (this == 0) {
      return null;
    } else {
      return this;
    }
  }

  String toCurrency({
    final String symbol = '\u20B9',
  }) {
    if (this.blank()) {
      return null;
    } else {
      return NumberFormat.currency(
        locale: 'en-US',
        symbol: symbol,
        decimalDigits: this % 1 == 0 ? 0 : 2,
      ).format(this);
    }
  }

  String toDecimal() {
    return this.toStringAsFixed(this % 1 == 0 ? 0 : 2);
  }

  String toBlankableString() {
    if (this.blank()) {
      return null;
    } else {
      return this.toString();
    }
  }
}
