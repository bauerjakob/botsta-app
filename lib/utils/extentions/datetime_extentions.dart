import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toTimeString() {
    return DateFormat('kk:mm a').format(this.toLocal());
  }
}