import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class StorageUtils {
  static SharedPreferences? sharedPreference;

  init() async {
    sharedPreference ??= await SharedPreferences.getInstance();
  }

  saveNumber(String number) {
    log('number saved');
    sharedPreference?.setString('number', number);
  }

  saveName(String name) {
    log('name saved');
    sharedPreference?.setString('name', name);
  }

  saveRole(String role) {
    sharedPreference?.setString('role', role);
  }

  String? get getNumber => sharedPreference?.getString('number') ?? '';

  String? get getName => sharedPreference?.getString('name') ?? '';

  String? get getRole => sharedPreference?.getString('role') ?? '';

  static logOut() {
    log('logout');
    sharedPreference?.clear();
  }
}

final storageUtils = StorageUtils();
