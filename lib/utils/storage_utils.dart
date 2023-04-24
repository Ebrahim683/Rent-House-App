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

  static saveRole(String role) {
    box.write('role', role);
  }

  static saveLocation(String location) {
    log('$location saved');
    box.write('location', location);
  }

  static String getNumber() {
    return box.read('number');
  }

  static String getName() {
    return box.read('name');
  }

  static String getRole() {
    String role = box.read('role');
    return role;
  }

  static String getLocation() {
    String location = box.read('location');
    return location;
  }

  static logOut() {
    log('cleared');
    box.remove('number');
    box.remove('name');
    box.remove('user');
    box.remove('location');
  }
}
