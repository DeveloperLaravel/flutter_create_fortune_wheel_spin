import 'package:freezed_annotation/freezed_annotation.dart';

part 'wheel_event.freezed.dart';

@freezed
class WheelEvent with _$WheelEvent {
  const factory WheelEvent.spin() = SpinWheel;
}
