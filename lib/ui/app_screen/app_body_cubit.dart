import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../misc/app_colors.dart';

part 'app_body_state.dart';

class AppBodyCubit extends Cubit<AppBodyState> {
  AppBodyCubit()
      : super(const AppBodyMorning(
            start: AppColors.morningStart, stop: AppColors.morningStop));

  void updateBackgroundColor(int hour) {
    if (hour >= 19 || hour <= 6) {
      emit(const AppBodyNight(
          start: AppColors.nightStart, stop: AppColors.nightStop));
    } else if (hour >= 7 && hour <= 11) {
      emit(const AppBodyMorning(
          start: AppColors.morningStart, stop: AppColors.morningStop));
    } else if (hour >= 12 && hour <= 15) {
      emit(const AppBodyNoon(
          start: AppColors.noonStart, stop: AppColors.noonStop));
    } else if (hour >= 16 && hour <= 18) {
      emit(const AppBodyAfternoon(
          start: AppColors.afternoonStart, stop: AppColors.afternoonStop));
    }
  }
}
