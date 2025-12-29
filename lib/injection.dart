import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';
import 'package:hive/hive.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  final box = await Hive.openBox('wheelBox');
  getIt.registerSingleton<Box>(box, instanceName: 'wheelBox');

  $initGetIt(getIt);
}
