import 'package:get_storage/get_storage.dart';

class DatePickerService {
  final GetStorage box = GetStorage('date');
  final String key = 'selectedDate';

  void saveSelectedDateToBox(String date) {
    box.write(key, date);
  }
}
