import 'dart:core';
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

  saveEmail(String email) {
    log('email saved');
    sharedPreference?.setString('email', email);
  }

  saveRole(String role) {
    sharedPreference?.setString('role', role);
  }

  saveProfilePic(String pic) {
    sharedPreference?.setString('pic', pic);
  }

  saveOnboarding() {
    sharedPreference?.setString('onBoarding', 'onBoarding');
    log('onboarding save');
  }

  String? get getNumber => sharedPreference?.getString('number') ?? '';

  String? get getName => sharedPreference?.getString('name') ?? '';

  String? get getEmail => sharedPreference?.getString('email') ?? '';

  String? get getRole => sharedPreference?.getString('role') ?? '';

  String? get getProfilePic => sharedPreference?.getString('pic') ?? '';

  String? get getOnBoarding => sharedPreference?.getString('onBoarding') ?? '';

  static clearProfilePic() {
    sharedPreference?.remove('pic');
  }

  static logOut() {
    log('logout');
    sharedPreference?.remove('name');
    sharedPreference?.remove('number');
    sharedPreference?.remove('role');
  }
}

final storageUtils = StorageUtils();
