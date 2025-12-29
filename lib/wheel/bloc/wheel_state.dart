import 'package:freezed_annotation/freezed_annotation.dart';
part 'wheel_state.freezed.dart';

@freezed
class WheelState with _$WheelState {
  const factory WheelState.initial() = Initial;
  const factory WheelState.spinning(int index) = Spinning;
}
