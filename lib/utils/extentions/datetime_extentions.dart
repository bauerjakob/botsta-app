import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

extension DateTimeExtension on DateTime {
  String toTimeString(String format) {
    return DateFormat(format).format(this.toLocal());
  }

  String toDateTimeString(BuildContext context) {
    final dateFormat = DateFormat(context.translate('DATETIME.date_format'));
    final timeFormat = DateFormat(context.translate('DATETIME.time_format'));
    final today = context.translate('DATETIME.today');
    final yesterday = context.translate('DATETIME.yesterday');

    final difference =  _calculateDateDifference();

    if (difference == 0) { // today
      return timeFormat.format(this.toLocal());
    }
    else if (difference == -1) { // yesterday
      return yesterday;
    }
    else { // yesterday
      return dateFormat.format(this.toLocal());
    }
  }

  int _calculateDateDifference() {
    DateTime now = DateTime.now();
    return DateTime(this.toLocal().year, this.toLocal().month, this.toLocal().day).difference(DateTime(now.year, now.month, now.day)).inDays;
  }
}