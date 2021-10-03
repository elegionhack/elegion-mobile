import 'package:intl/intl.dart';

abstract class DateTimeFormater {
  static String date(DateTime date) {
    return DateFormat('dd.MM.yyyy').format(date);
  }
}
