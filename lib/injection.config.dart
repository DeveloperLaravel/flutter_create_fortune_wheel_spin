// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'wheel/bloc/wheel_bloc.dart' as _i4;
import 'wheel/data/wheel_repository.dart' as _i5;
import 'wheel/data/wheel_repository_impl.dart' as _i6;
import 'wheel/di/hive_module.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final hiveModule = _$HiveModule();
  await gh.factoryAsync<_i3.Box<dynamic>>(
    () => hiveModule.wheelBox,
    preResolve: true,
  );
  gh.factory<_i4.WheelBloc>(() => _i4.WheelBloc());
  gh.lazySingleton<_i5.WheelRepository>(() =>
      _i6.WheelRepositoryImpl(get<_i7.Box<dynamic>>(instanceName: 'wheelBox')));
  return get;
}

class _$HiveModule extends _i8.HiveModule {}
