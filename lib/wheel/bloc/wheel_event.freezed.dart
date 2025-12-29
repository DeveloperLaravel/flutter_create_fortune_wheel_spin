// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wheel_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WheelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() spin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? spin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? spin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spin value) spin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spin value)? spin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spin value)? spin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheelEventCopyWith<$Res> {
  factory $WheelEventCopyWith(
          WheelEvent value, $Res Function(WheelEvent) then) =
      _$WheelEventCopyWithImpl<$Res, WheelEvent>;
}

/// @nodoc
class _$WheelEventCopyWithImpl<$Res, $Val extends WheelEvent>
    implements $WheelEventCopyWith<$Res> {
  _$WheelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpinImplCopyWith<$Res> {
  factory _$$SpinImplCopyWith(
          _$SpinImpl value, $Res Function(_$SpinImpl) then) =
      __$$SpinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpinImplCopyWithImpl<$Res>
    extends _$WheelEventCopyWithImpl<$Res, _$SpinImpl>
    implements _$$SpinImplCopyWith<$Res> {
  __$$SpinImplCopyWithImpl(_$SpinImpl _value, $Res Function(_$SpinImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpinImpl implements Spin {
  const _$SpinImpl();

  @override
  String toString() {
    return 'WheelEvent.spin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() spin,
  }) {
    return spin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? spin,
  }) {
    return spin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? spin,
    required TResult orElse(),
  }) {
    if (spin != null) {
      return spin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Spin value) spin,
  }) {
    return spin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Spin value)? spin,
  }) {
    return spin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Spin value)? spin,
    required TResult orElse(),
  }) {
    if (spin != null) {
      return spin(this);
    }
    return orElse();
  }
}

abstract class Spin implements WheelEvent {
  const factory Spin() = _$SpinImpl;
}
