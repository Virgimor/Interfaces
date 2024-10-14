import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumer (double number){
    final formatNumeber = NumberFormat. compactCurrency(
      decimalDigits: 0,
      symbol: '',
    );
    return formatNumeber.format(number);
  }

}