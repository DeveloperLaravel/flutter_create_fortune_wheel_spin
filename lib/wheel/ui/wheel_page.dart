import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import '../bloc/wheel_bloc.dart';
import '../bloc/wheel_event.dart';
import '../bloc/wheel_state.dart';
import '../../injection.dart';

class WheelPage extends StatelessWidget {
  WheelPage({super.key});

  final items = ['Flutter', 'Dart', 'Bloc', 'Hive', 'Dio'];

  final colors = [
    Colors.red,
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  final selected = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WheelBloc>(),
      child: BlocListener<WheelBloc, WheelState>(
        listener: (context, state) {
          state.whenOrNull(
            spinning: (index) {
              selected.add(index);
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Fortune Wheel')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: FortuneWheel(
                  selected: selected.stream,
                  items: [
                    for (int i = 0; i < items.length; i++)
                      FortuneItem(
                        child: Text(items[i]),
                        style: FortuneItemStyle(color: colors[i]),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<WheelBloc>().add(const WheelEvent.spin());
                },
                child: const Text('SPIN 🎡'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
