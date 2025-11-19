import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_eat/data/api/api.dart';
import 'package:lets_eat/data/models/place.dart';

part 'food_map_cubit.freezed.dart';

class FoodMapCubit extends Cubit<FoodMapState> {
  FoodMapCubit([API? api]) : _api = api ?? API(), super(const FoodMapState());
  final API _api;

  Future<void> fetchNearbyRestaurants(LatLng latLng) async {
    try {
      emit(state.copyWith(status: FoodMapStatus.loading));
      final places = await _api.getNearbyRestaurants(latLng: latLng, radius: state.radiusMeters);
      emit(
        state.copyWith(
          status: FoodMapStatus.success,
          places: places,
        ),
      );
      emit(state.copyWith(status: FoodMapStatus.success));
    } catch (e) {
      print(e);
      emit(state.copyWith(status: FoodMapStatus.error));
    }
  }
}

@freezed
abstract class FoodMapState with _$FoodMapState {
  const factory FoodMapState({
    @Default(FoodMapStatus.init) FoodMapStatus status,
    @Default(8000) double radiusMeters,
    @Default([]) List<Place> places,
  }) = _FoodMapState;
}

enum FoodMapStatus { init, loading, error, success }
