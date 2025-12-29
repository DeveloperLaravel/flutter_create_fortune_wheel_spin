import 'package:flutter_bloc/flutter_bloc.dart';
import 'wheel_event.dart';
import 'wheel_state.dart';
import 'package:injectable/injectable.dart';
import 'dart:math';

@injectable
class WheelBloc extends Bloc<WheelEvent, WheelState> {
  WheelBloc() : super(const WheelState.initial()) {
    on<Spin>((event, emit) {
      final randomIndex = Random().nextInt(5); // عدد العناصر في العجلة
      emit(WheelState.spinning(randomIndex));
    });
  }
}
