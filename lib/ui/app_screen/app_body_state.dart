part of 'app_body_cubit.dart';

@immutable
abstract class AppBodyState extends Equatable {
  final Color start;
  final Color stop;

  const AppBodyState({required this.start, required this.stop});

  @override
  List<Object?> get props => [start, stop];
}

class AppBodyMorning extends AppBodyState {
  const AppBodyMorning({required super.start, required super.stop});
}

class AppBodyNoon extends AppBodyState {
  const AppBodyNoon({required super.start, required super.stop});
}

class AppBodyAfternoon extends AppBodyState {
  const AppBodyAfternoon({required super.start, required super.stop});
}

class AppBodyNight extends AppBodyState {
  const AppBodyNight({required super.start, required super.stop});
}
