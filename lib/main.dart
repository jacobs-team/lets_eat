import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lets_eat/data/api/api.dart';
import 'package:lets_eat/data/api/rest_client.dart';
import 'package:lets_eat/feature/food_map/bloc/food_map_cubit.dart';
import 'package:lets_eat/feature/food_map/views/map_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<LocationPermission>(
        future: Geolocator.requestPermission(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Material(
              child: SafeArea(
                child: Align(alignment: Alignment.topCenter, child: CircularProgressIndicator()),
              ),
            );
          }
          return switch (snapshot.data!) {
            LocationPermission.always || LocationPermission.whileInUse => BlocProvider(
              create: (_) => FoodMapCubit(),
              child: const MapView(),
            ),
            _ => const ErrorView(),
          };
        },
      ),
    );
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('We need permission to find restaurants near you.'),
            TextButton(onPressed: Geolocator.openAppSettings, child: Text('open settings')),
          ],
        ),
      ),
    );
  }
}
