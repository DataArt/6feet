import 'package:bloc/bloc.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:tracking/domain/bloc/onboarding/OnboardingEvent.dart';
import 'package:tracking/domain/service/LocationPermissionService.dart';

import 'OnboardingState.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final LocationPermissionService _locationPermissionService;

  OnboardingBloc(this._locationPermissionService);

  @override
  OnboardingState get initialState => OnboardingState.initial();

  @override
  Stream<OnboardingState> mapEventToState(event) async* {
    yield* await event.when(
        checkPermission: (e) => _checkPermission(),
        requestPermission: (e) => _requestPermission(),
        shouldShowPermissionRationale: (e) =>
            _shouldShowRequestPermissionRationale());
  }

  Stream<OnboardingState> _checkPermission() async* {
    var permissionStatus =
        await _locationPermissionService.checkLocationPermission();

    if (permissionStatus.isSuccess() &&
        permissionStatus.data == PermissionStatus.granted) {
      yield OnboardingState.granted();
    } else {
      yield OnboardingState.notGrantedYet();
    }
  }

  Stream<OnboardingState> _requestPermission() async* {
    var permissionStatus = await _locationPermissionService.requestPermission();

    if (permissionStatus.isSuccess() &&
        permissionStatus.data == PermissionStatus.granted) {
      yield OnboardingState.granted();
    } else {
      yield OnboardingState.denied();
    }
  }

  Stream<OnboardingState> _shouldShowRequestPermissionRationale() async* {
    var isShown =
        await _locationPermissionService.shouldShowRequestPermissionRationale();

    if (isShown.data) {
      yield OnboardingState.notGrantedYet();
    } else {
      yield OnboardingState.showLocationPermissionRationale();
    }
  }
}
