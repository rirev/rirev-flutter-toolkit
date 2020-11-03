import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDateTime() {
    return DateFormat('HH:mm MMM dd').format(this.toLocal()).toString();
  }

  String toTime() {
    return DateFormat('HH:mm').format(this.toLocal()).toString();
  }

  String toDate() {
    return DateFormat('dd/MM/yyyy').format(this.toLocal()).toString();
  }
}
