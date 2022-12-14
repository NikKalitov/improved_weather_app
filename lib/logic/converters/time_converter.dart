import '../../data/models/time_class.dart';

//класс-конвертер времени из timestamp в класс TimeClass
class TimeConverter {
  static TimeClass getDate(int timeStamp) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    String weekday = _getWeekday(dateTime.weekday);
    String day = dateTime.day.toString();
    String month = _monthToString(dateTime.month);
    String year = dateTime.year.toString();
    String hour = dateTime.hour.toString();
    String minutes = _minutesConvert(dateTime.minute);
    final TimeClass timeClass = TimeClass(
      weekday: weekday,
      day: day,
      month: month,
      year: year,
      hour: hour,
      minutes: minutes,
    );
    return timeClass;
  }

  static String _getWeekday(int value) {
    String weekday = '';
    switch (value) {
      case 1:
        weekday = 'Пн';
        break;
      case 2:
        weekday = 'Вт';
        break;
      case 3:
        weekday = 'Ср';
        break;
      case 4:
        weekday = 'Чт';
        break;
      case 5:
        weekday = 'Пт';
        break;
      case 6:
        weekday = 'Сб';
        break;
      case 7:
        weekday = 'Вс';
        break;
      default:
    }
    return weekday;
  }

  static String _monthToString(int monthInt) {
    String month = '';
    switch (monthInt) {
      case 1:
        month = 'янв';
        break;
      case 2:
        month = 'фев';
        break;
      case 3:
        month = 'мар';
        break;
      case 4:
        month = 'апр';
        break;
      case 5:
        month = 'май';
        break;
      case 6:
        month = 'июн';
        break;
      case 7:
        month = 'июл';
        break;
      case 8:
        month = 'авг';
        break;
      case 9:
        month = 'сен';
        break;
      case 10:
        month = 'окт';
        break;
      case 11:
        month = 'ноя';
        break;
      case 12:
        month = 'дек';
        break;
      default:
    }
    return month;
  }

  static String _minutesConvert(int getMinutes) {
    String minutes = '';
    if (getMinutes < 9) {
      minutes = '0$getMinutes';
    } else {
      minutes = getMinutes.toString();
    }
    return minutes;
  }
}
