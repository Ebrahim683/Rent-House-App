import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final box = GetStorage();

  static saveNumber(String number) {
    box.write('number', number);
  }

  static saveName(String name) {
    box.write('name', name);
  }

  static newUser(String newUser) {
    box.write('new', newUser);
  }

  static String getNewUser() {
    return box.read('new');
  }

  static String getNumber() {
    return box.read('number');
  }

  static String getName() {
    return box.read('name');
  }

  static bool isNewUser() {
    String newUser = box.read('new');
    if (newUser != '') {
      return true;
    } else {
      return false;
    }
  }

  static bool isLoggedIn() {
    String number = box.read('number');
    if (number != '') {
      return true;
    } else {
      return false;
    }
  }

  static logOut() {
    box.remove('number');
    box.remove('name');
  }
}
