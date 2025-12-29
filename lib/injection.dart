import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // سيتم توليده
import 'package:hive_flutter/hive_flutter.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await Hive.initFlutter(); // تهيئة Hive
  $initGetIt(getIt); // توليد الاعتمادات
}
