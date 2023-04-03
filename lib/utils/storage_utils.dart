import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final box = GetStorage();

  static saveNumber(String number) {
    box.write('number', number);
  }

  static String getNumber() {
    return box.read('number');
  }

  static bool isLoggedIn() {
    String number = box.read('number');
    if (number != '') {
      return true;
    } else {
      return false;
    }
  }
  
}
