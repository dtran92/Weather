part of 'home_cubit.dart';

// @immutable
// abstract class ResultState extends Equatable {
//   @override
//   List<Object?> get props => [];
// }
//
// class ResultLoading extends ResultState {}
//
// class ResultSuccess extends ResultState {
//   final Weather weather;
//
//   ResultSuccess(this.weather);
// }
//
// class ResultError extends ResultState {
//   final String errorMessage;
//
//   ResultError(this.errorMessage);
// }

enum Result { initial, loading, success, error }

class HomeState extends Equatable {
  final Result result;
  final Weather? weather;
  final String? errorMessage;

  const HomeState({required this.result, this.weather, this.errorMessage});

  HomeState copyWith(
          {required Result result, Weather? weather, String? errorMessage}) =>
      HomeState(
          result: result,
          weather: weather ?? this.weather,
          errorMessage: errorMessage);

  @override
  List<Object?> get props => [result, weather, errorMessage];
}
