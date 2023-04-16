import 'dart:developer';

import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final box = GetStorage();

  static saveNumber(String number) {
    log('number saved');
    box.write('number', number);
  }

  static saveName(String name) {
    log('name saved');
    box.write('name', name);
  }

  static saveUser(String user) {
    box.write('user', user);
  }

  static String getNumber() {
    return box.read('number');
  }

  static String getName() {
    return box.read('name');
  }

  static bool isLoggedIn() {
    String number = box.read('number');
    if (number != "") {
      return true;
    } else {
      return false;
    }
  }

  static logOut() {
    log('cleared');
    box.remove('number');
    box.remove('name');
  }
}
