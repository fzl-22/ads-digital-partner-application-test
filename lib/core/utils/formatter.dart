import 'package:intl/intl.dart';

String formatIndonesianPrice(int price) {
  final formatter =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  return formatter.format(price).replaceAll(',', '.');
}
