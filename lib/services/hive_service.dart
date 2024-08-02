import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:woki_app/data/data.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(UserHiveAdapter())
        ..registerAdapter(CompanyHiveAdapter())
        ..registerAdapter(AddressHiveAdapter());
      await Hive.initFlutter();

      await Hive.openBox<UserHive>('users_box');
    } catch (e) {
      if (kDebugMode) {
        print('Failed to initialize Hive: $e');
      }
    }
  }
}
