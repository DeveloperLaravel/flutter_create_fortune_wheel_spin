import 'package:hive_flutter/hive_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@module
abstract class HiveModule {
  @preResolve
  Future<Box> get wheelBox async => await Hive.openBox('wheelBox');
}
