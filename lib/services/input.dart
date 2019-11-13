import 'package:flutter/painting.dart';
import 'package:shamsi_date/shamsi_date.dart';

class InputService {
  static String rialize(number) {}

  static Color getColorFromHex(str) {
    return Color(int.parse('FF' + str.replaceAll('#', ''), radix: 16));
  }

  static convertToEnglishDigits(str) {
    str = str.toString();
    String res = '';
    int i = 0;
    for (i = 0; i < str.length; i++) {
      switch (str[i]) {
        case '۰':
          res += '0';
          break;
        case '۱':
          res += '1';
          break;
        case '۲':
          res += '2';
          break;
        case '۳':
          res += '3';
          break;
        case '۴':
          res += '4';
          break;
        case '۵':
          res += '5';
          break;
        case '۶':
          res += '6';
          break;
        case '۷':
          res += '7';
          break;
        case '۸':
          res += '8';
          break;
        case '۹':
          res += '9';
          break;

        case '٠':
          res += '0';
          break;
        case '١':
          res += '1';
          break;
        case '٢':
          res += '2';
          break;
        case '٣':
          res += '3';
          break;
        case '٤':
          res += '4';
          break;
        case '٥':
          res += '5';
          break;
        case '٦':
          res += '6';
          break;
        case '٧':
          res += '7';
          break;
        case '٨':
          res += '8';
          break;
        case '٩':
          res += '9';
          break;

        default:
          res += str[i];
          break;
      }
    }
    return res;
  }

  static convertToDigits(str) {
    str = str.toString();
    String res = '';
    int i = 0;
    for (i = 0; i < str.length; i++) {
      switch (str[i]) {
        case '۰':
          res += '0';
          break;
        case '۱':
          res += '1';
          break;
        case '۲':
          res += '2';
          break;
        case '۳':
          res += '3';
          break;
        case '۴':
          res += '4';
          break;
        case '۵':
          res += '5';
          break;
        case '۶':
          res += '6';
          break;
        case '۷':
          res += '7';
          break;
        case '۸':
          res += '8';
          break;
        case '۹':
          res += '9';
          break;

        case '٠':
          res += '0';
          break;
        case '١':
          res += '1';
          break;
        case '٢':
          res += '2';
          break;
        case '٣':
          res += '3';
          break;
        case '٤':
          res += '4';
          break;
        case '٥':
          res += '5';
          break;
        case '٦':
          res += '6';
          break;
        case '٧':
          res += '7';
          break;
        case '٨':
          res += '8';
          break;
        case '٩':
          res += '9';
          break;
        default:
          res += str[i];
          break;
      }
    }
    return res;
  }

  static convertToDigitsOnly(str) {
    str = str.toString();
    String res = '';
    int i = 0;
    for (i = 0; i < str.length; i++) {
      switch (str[i]) {
        case '۰':
          res += '0';
          break;
        case '۱':
          res += '1';
          break;
        case '۲':
          res += '2';
          break;
        case '۳':
          res += '3';
          break;
        case '۴':
          res += '4';
          break;
        case '۵':
          res += '5';
          break;
        case '۶':
          res += '6';
          break;
        case '۷':
          res += '7';
          break;
        case '۸':
          res += '8';
          break;
        case '۹':
          res += '9';
          break;

        case '٠':
          res += '0';
          break;
        case '١':
          res += '1';
          break;
        case '٢':
          res += '2';
          break;
        case '٣':
          res += '3';
          break;
        case '٤':
          res += '4';
          break;
        case '٥':
          res += '5';
          break;
        case '٦':
          res += '6';
          break;
        case '٧':
          res += '7';
          break;
        case '٨':
          res += '8';
          break;
        case '٩':
          res += '9';
          break;
        default:
          if (['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
              .contains(str[i])) {
            res += str[i];
          }
          break;
      }
    }
    return res;
  }

  static isValidAmount(str) {
    var res = getValidAmount(str);
    if (res == -1) {
      return false;
    } else {
      return true;
    }
  }

  static getValidCode(str) {
    if (str == null) {
      return '0';
    }
    str = str.toString();
    if (str == null || str.trim() == '') {
      return '0';
    }

    var number = convertToDigits(str);

    return number.toString();
  }

  static isValidCode(str) {
    var number = getValidCode(str);
    if (number != double.nan) {
      return true;
    }
    return false;
  }

  static getValidInteger(str) {
    if (str == null) {
      return '0';
    }
    str = str.toString();
    if (str == null || str.trim() == '') {
      return '0';
    }
    var hasZero = str.indexOf('0') == 0;

    var number = convertToDigits(str);
    var num = int.parse(number.trim());

    if (num != double.nan) {
      if (hasZero) {
        return '0' + num.toString();
      }
      return num.toString();
    }

    return '0';
  }

  static isValidInteger(str) {
    if (str == null) {
      return false;
    }
    str = str.toString();
    if (str == null || str.trim() == '') {
      return false;
    }

    var number = convertToDigits(str);
    var num = int.parse(number.trim());

    if (num == double.nan) {
      return false;
    }
    return true;
  }

  static isValidBirthdate(str) {
    if (str == null || str.length == 0) {
      return false;
    }
    String dta = getValidBirthdate(str);

    RegExp regExp = new RegExp(
      r"^[0-9]{4}[-\/][0-9]{1,2}[-\/][0-9]{1,2}$",
      caseSensitive: false,
      multiLine: false,
    );
    return regExp.stringMatch(dta) != null;
  }

  static getValidBirthdate(str) {
    String number = convertToDigits(str);
    number = number.replaceAll('\/', '-');
    number = number.replaceAll('\\', '-');
    number = number.replaceAll('/', '-');
    List<String> numbers = number.split('-');

    Gregorian date = Gregorian.fromJalali(new Jalali(
        int.parse(numbers[0]), int.parse(numbers[1]), int.parse(numbers[2])));
    return '${date.formatter.yyyy}-${date.formatter.mm}-${date.formatter.dd}';
  }

  static getValidJalali(str) {
    String number = convertToDigits(str);
    number = number.replaceAll('\/', '-');
    number = number.replaceAll('\\', '-');
    number = number.replaceAll('/', '-');
    List<String> numbers = number.split('-');

    Jalali date = Jalali.fromGregorian(new Gregorian(
        int.parse(numbers[0]), int.parse(numbers[1]), int.parse(numbers[2])));
    return '${date.formatter.yyyy}-${date.formatter.mm}-${date.formatter.dd}';
  }

  static getValidAmount(str) {
    if (str == null) {
      return -1;
    }
    str = str.toString();
    if (str == null || str.trim() == '') {
      return -1;
    }
    var number = convertToDigits(str);
    var num = int.parse(number.trim());

    if (num != double.nan) {
      return num;
    }

    return -1;
  }

  static isValidNumber(str, code) {
    var number = getValidNumber(str, code).toString();
    if (int.parse(number) != double.nan) {
      return true;
    }

    return false;
  }

  static getValidNumber(str, String code) {
    if (str == null) {
      return -1;
    }
    str = str.toString();
    if (str == null || str.trim() == '') {
      return -1;
    }
    var number = convertToDigitsOnly(str);
    String num = number.trim();
    if (num == null) {
      return '0';
    }
    if (num.indexOf('00') == 0) {
      num = num.substring(2);
    }
    if (num.indexOf('0') == 0) {
      num = num.substring(1);
    }

    if (code.indexOf('00') == 0) {
      code = code.substring(2);
    }
    if (code.indexOf('0') == 0) {
      code = code.substring(1);
    }
    code = code.replaceAll('+', '');
    num = num.replaceAll('+', '');
    return code + num;
  }

  static getValidNID(str) {
    if (str == null) {
      return '0';
    }
    var number = convertToDigits(str);

    return number;
  }

  static isValidNID(str) {
    var number = getValidNID(str);

    RegExp regExp = new RegExp(
      r"^\d{10}$",
      caseSensitive: false,
      multiLine: false,
    );
    if (regExp.stringMatch(number) == null) {
      return false;
    }
    var sum = 0;
    for (var i = 8; i >= 0; i--) {
      sum += (10 - i) * (int.parse(number[i]));
    }
    var remain = sum % 11;
    return (remain < 2)
        ? int.parse(number[9]) == remain
        : int.parse(number[9]) == (11 - remain);
  }
}
