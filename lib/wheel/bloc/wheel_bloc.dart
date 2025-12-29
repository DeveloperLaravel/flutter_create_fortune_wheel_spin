import 'package:flutter_bloc/flutter_bloc.dart';
import 'wheel_event.dart';
import 'wheel_state.dart';
import '../data/wheel_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class WheelBloc extends Bloc<WheelEvent, WheelState> {
  final WheelRepository repository;

  WheelBloc(this.repository) : super(const WheelState.initial()) {
    on<SpinWheel>((event, emit) async {
      final index = await repository.spin(5);
      await repository.saveLastResult(index);
      emit(WheelState.spinning(index));
    });
  }
}
