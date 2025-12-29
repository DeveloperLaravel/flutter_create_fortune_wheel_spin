import 'dart:math';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'wheel_repository.dart';

@LazySingleton(as: WheelRepository)
class WheelRepositoryImpl implements WheelRepository {
  final Box box;

  WheelRepositoryImpl(@Named('wheelBox') this.box);

  @override
  Future<int> spin(int length) async {
    return Random().nextInt(length);
  }

  @override
  Future<void> saveLastResult(int index) async {
    await box.put('last', index);
  }

  @override
  int? getLastResult() {
    return box.get('last');
  }
}
