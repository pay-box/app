import 'package:paybox/services/intl/index.dart';
import 'package:paybox/services/persianiser.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:intl/intl.dart';

class DateStrftime {
  static String since(date, context) {
    final now = DateTime.now();
    DateTime targetDate;
    if (date.runtimeType.toString() == 'String') {
      targetDate = DateTime.parse(date);
    } else {
      targetDate = date;
    }
    final diffrence = now.difference(targetDate);
    if (diffrence.inHours > 24) {
      Jalali jalali = Jalali.fromDateTime(targetDate);
      jalali.toString();
      return Persianiser.persianise(jalali.toString());
      // return targetDate.toLocal().toString();
    } else {
      if (diffrence.inHours > 0) {
        return Persianiser.persianise(diffrence.inHours.toString()) +
            PayBoxLocalizations.of(context).dateSinceLabelHoursAgo;
      } else if (diffrence.inMinutes > 0) {
        return Persianiser.persianise(diffrence.inMinutes.toString()) +
            PayBoxLocalizations.of(context).dateSinceLabelMinutesAgo;
      } else if (diffrence.inSeconds > 0) {
        return Persianiser.persianise(diffrence.inSeconds.toString()) +
            PayBoxLocalizations.of(context).dateSinceLabelSecondsAgo;
      }
    }
  }

  static String related(DateTime targetDate) {
    final now = DateTime.now();
    final midnight = new DateTime(now.year, now.month, now.day);
    ;
    if (midnight.compareTo(targetDate) > 0) {
      Jalali jalali = Jalali.fromDateTime(targetDate);
      jalali.toString();
      return Persianiser.persianise(
          DateFormat('HH:mm').format(targetDate.toLocal()) +
              " " +
              jalali.toString());
    } else {
      return Persianiser.persianise(
          DateFormat('HH:mm').format(targetDate.toLocal()));
    }
  }

  static String jalalify(DateTime date) {
    DateTime targetDate = date;

    Jalali jalali = Jalali.fromDateTime(targetDate);
    return Persianiser.persianise(jalali.toString());
  }

  static String jalalifyWithHour(DateTime date) {
    DateTime targetDate = date;

    Jalali jalali = Jalali.fromDateTime(targetDate);
    return Persianiser.persianise(
        '${jalali.toString()} ${DateFormat('HH:mm').format(date.toLocal())}');
  }

  static String getDurationFromSeconds(int seconds) {
    String res = '';
    int hours = (seconds / 3600).floor();
    seconds = seconds % 3600;
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;

    if (hours > 0) {
      if (hours < 10) {
        res += '0' + hours.toString();
      } else {
        res += hours.toString();
      }
      res += ":";
    }

    if (minutes < 10) {
      res += '0' + minutes.toString();
    } else {
      res += minutes.toString();
    }
    res += ":";
    if (seconds < 10) {
      res += '0' + seconds.toString();
    } else {
      res += seconds.toString();
    }
    return res;
  }
}
