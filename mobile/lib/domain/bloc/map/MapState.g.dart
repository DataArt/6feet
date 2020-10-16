// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MapState.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MapState extends Equatable {
  const MapState(this._type);

  factory MapState.initial() = Initial;

  factory MapState.initialLocationReceived({@required LatLng location}) =
      InitialLocationReceived;

  factory MapState.initialLocationDefault(
      {@required LatLng location,
      @required bool locationServiceEnabled}) = InitialLocationDefault;

  factory MapState.locationUpdateReceived({@required LatLng location}) =
      LocationUpdateReceived;

  factory MapState.locationSent() = LocationSent;

  factory MapState.cameraMovedLoading() = CameraMovedLoading;

  factory MapState.locationsReceived(
      {@required List<UserLocationWithTime> locations}) = LocationsReceived;

  factory MapState.timeChangedLoading() = TimeChangedLoading;

  factory MapState.errorReceived({@required String error}) = ErrorReceived;

  factory MapState.myCurrentLocationAvailable({@required LatLng location}) =
      MyCurrentLocationAvailable;

  factory MapState.myCurrentLocationPermissionGranted() =
      MyCurrentLocationPermissionGranted;

  factory MapState.myCurrentLocationPermissionNotGrantedYet() =
      MyCurrentLocationPermissionNotGrantedYet;

  factory MapState.myCurrentLocationPermissionDenied() =
  MyCurrentLocationPermissionDenied;

  factory MapState.showLocationPermissionRationale() =
  ShowLocationPermissionRationale;

  factory MapState.dontShowLocationPermissionRationale() =
  DontShowLocationPermissionRationale;

  factory MapState.initialLocationServiceRequestEnabled() =
  InitialLocationServiceRequestEnabled;

  factory MapState.initialLocationServiceRequestDisabled() =
  InitialLocationServiceRequestDisabled;

  factory MapState.myCurrentLocationServiceRequestEnabled() =
  MyCurrentLocationServiceRequestEnabled;

  factory MapState.myCurrentLocationServiceRequestDisabled() =
  MyCurrentLocationServiceRequestDisabled;

  factory MapState.myCurrentLocationServicesDisabled() =
  MyCurrentLocationServicesDisabled;

  final _MapState _type;

//ignore: missing_return
  R when<R>({@required R Function(Initial) initial,
    @required R Function(InitialLocationReceived) initialLocationReceived,
    @required
          R Function(InitialLocationDefault) initialLocationDefault,
      @required
          R Function(LocationUpdateReceived) locationUpdateReceived,
      @required
          R Function(LocationSent) locationSent,
      @required
          R Function(CameraMovedLoading) cameraMovedLoading,
      @required
          R Function(LocationsReceived) locationsReceived,
      @required
          R Function(TimeChangedLoading) timeChangedLoading,
      @required
          R Function(ErrorReceived) errorReceived,
      @required
          R Function(MyCurrentLocationAvailable) myCurrentLocationAvailable,
      @required
          R Function(MyCurrentLocationPermissionGranted)
              myCurrentLocationPermissionGranted,
      @required
          R Function(MyCurrentLocationPermissionNotGrantedYet)
              myCurrentLocationPermissionNotGrantedYet,
    @required R Function(MyCurrentLocationPermissionDenied)
    myCurrentLocationPermissionDenied,
    @required R Function(ShowLocationPermissionRationale)
    showLocationPermissionRationale,
    @required R Function(DontShowLocationPermissionRationale)
    dontShowLocationPermissionRationale,
    @required R Function(InitialLocationServiceRequestEnabled)
    initialLocationServiceRequestEnabled,
    @required R Function(InitialLocationServiceRequestDisabled)
    initialLocationServiceRequestDisabled,
    @required R Function(MyCurrentLocationServiceRequestEnabled)
    myCurrentLocationServiceRequestEnabled,
    @required R Function(MyCurrentLocationServiceRequestDisabled)
    myCurrentLocationServiceRequestDisabled,
    @required R Function(MyCurrentLocationServicesDisabled)
    myCurrentLocationServicesDisabled}) {
    assert(() {
      if (initial == null ||
          initialLocationReceived == null ||
          initialLocationDefault == null ||
          locationUpdateReceived == null ||
          locationSent == null ||
          cameraMovedLoading == null ||
          locationsReceived == null ||
          timeChangedLoading == null ||
          errorReceived == null ||
          myCurrentLocationAvailable == null ||
          myCurrentLocationPermissionGranted == null ||
          myCurrentLocationPermissionNotGrantedYet == null ||
          myCurrentLocationPermissionDenied == null ||
          showLocationPermissionRationale == null ||
          dontShowLocationPermissionRationale == null ||
          initialLocationServiceRequestEnabled == null ||
          initialLocationServiceRequestDisabled == null ||
          myCurrentLocationServiceRequestEnabled == null ||
          myCurrentLocationServiceRequestDisabled == null ||
          myCurrentLocationServicesDisabled == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MapState.Initial:
        return initial(this as Initial);
      case _MapState.InitialLocationReceived:
        return initialLocationReceived(this as InitialLocationReceived);
      case _MapState.InitialLocationDefault:
        return initialLocationDefault(this as InitialLocationDefault);
      case _MapState.LocationUpdateReceived:
        return locationUpdateReceived(this as LocationUpdateReceived);
      case _MapState.LocationSent:
        return locationSent(this as LocationSent);
      case _MapState.CameraMovedLoading:
        return cameraMovedLoading(this as CameraMovedLoading);
      case _MapState.LocationsReceived:
        return locationsReceived(this as LocationsReceived);
      case _MapState.TimeChangedLoading:
        return timeChangedLoading(this as TimeChangedLoading);
      case _MapState.ErrorReceived:
        return errorReceived(this as ErrorReceived);
      case _MapState.MyCurrentLocationAvailable:
        return myCurrentLocationAvailable(this as MyCurrentLocationAvailable);
      case _MapState.MyCurrentLocationPermissionGranted:
        return myCurrentLocationPermissionGranted(
            this as MyCurrentLocationPermissionGranted);
      case _MapState.MyCurrentLocationPermissionNotGrantedYet:
        return myCurrentLocationPermissionNotGrantedYet(
            this as MyCurrentLocationPermissionNotGrantedYet);
      case _MapState.MyCurrentLocationPermissionDenied:
        return myCurrentLocationPermissionDenied(
            this as MyCurrentLocationPermissionDenied);
      case _MapState.ShowLocationPermissionRationale:
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
      case _MapState.DontShowLocationPermissionRationale:
        return dontShowLocationPermissionRationale(
            this as DontShowLocationPermissionRationale);
      case _MapState.InitialLocationServiceRequestEnabled:
        return initialLocationServiceRequestEnabled(
            this as InitialLocationServiceRequestEnabled);
      case _MapState.InitialLocationServiceRequestDisabled:
        return initialLocationServiceRequestDisabled(
            this as InitialLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServiceRequestEnabled:
        return myCurrentLocationServiceRequestEnabled(
            this as MyCurrentLocationServiceRequestEnabled);
      case _MapState.MyCurrentLocationServiceRequestDisabled:
        return myCurrentLocationServiceRequestDisabled(
            this as MyCurrentLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServicesDisabled:
        return myCurrentLocationServicesDisabled(
            this as MyCurrentLocationServicesDisabled);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(Initial) initial,
      @required
          FutureOr<R> Function(InitialLocationReceived) initialLocationReceived,
      @required
          FutureOr<R> Function(InitialLocationDefault) initialLocationDefault,
      @required
          FutureOr<R> Function(LocationUpdateReceived) locationUpdateReceived,
      @required
          FutureOr<R> Function(LocationSent) locationSent,
      @required
          FutureOr<R> Function(CameraMovedLoading) cameraMovedLoading,
      @required
          FutureOr<R> Function(LocationsReceived) locationsReceived,
      @required
          FutureOr<R> Function(TimeChangedLoading) timeChangedLoading,
      @required
          FutureOr<R> Function(ErrorReceived) errorReceived,
      @required
          FutureOr<R> Function(MyCurrentLocationAvailable)
              myCurrentLocationAvailable,
      @required
          FutureOr<R> Function(MyCurrentLocationPermissionGranted)
              myCurrentLocationPermissionGranted,
      @required
          FutureOr<R> Function(MyCurrentLocationPermissionNotGrantedYet)
              myCurrentLocationPermissionNotGrantedYet,
        @required FutureOr<R> Function(MyCurrentLocationPermissionDenied)
        myCurrentLocationPermissionDenied,
        @required FutureOr<R> Function(ShowLocationPermissionRationale)
        showLocationPermissionRationale,
        @required FutureOr<R> Function(DontShowLocationPermissionRationale)
        dontShowLocationPermissionRationale,
        @required FutureOr<R> Function(InitialLocationServiceRequestEnabled)
        initialLocationServiceRequestEnabled,
        @required FutureOr<R> Function(InitialLocationServiceRequestDisabled)
        initialLocationServiceRequestDisabled,
        @required FutureOr<R> Function(MyCurrentLocationServiceRequestEnabled)
        myCurrentLocationServiceRequestEnabled,
        @required FutureOr<R> Function(MyCurrentLocationServiceRequestDisabled)
        myCurrentLocationServiceRequestDisabled,
        @required FutureOr<R> Function(MyCurrentLocationServicesDisabled)
        myCurrentLocationServicesDisabled}) {
    assert(() {
      if (initial == null ||
          initialLocationReceived == null ||
          initialLocationDefault == null ||
          locationUpdateReceived == null ||
          locationSent == null ||
          cameraMovedLoading == null ||
          locationsReceived == null ||
          timeChangedLoading == null ||
          errorReceived == null ||
          myCurrentLocationAvailable == null ||
          myCurrentLocationPermissionGranted == null ||
          myCurrentLocationPermissionNotGrantedYet == null ||
          myCurrentLocationPermissionDenied == null ||
          showLocationPermissionRationale == null ||
          dontShowLocationPermissionRationale == null ||
          initialLocationServiceRequestEnabled == null ||
          initialLocationServiceRequestDisabled == null ||
          myCurrentLocationServiceRequestEnabled == null ||
          myCurrentLocationServiceRequestDisabled == null ||
          myCurrentLocationServicesDisabled == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MapState.Initial:
        return initial(this as Initial);
      case _MapState.InitialLocationReceived:
        return initialLocationReceived(this as InitialLocationReceived);
      case _MapState.InitialLocationDefault:
        return initialLocationDefault(this as InitialLocationDefault);
      case _MapState.LocationUpdateReceived:
        return locationUpdateReceived(this as LocationUpdateReceived);
      case _MapState.LocationSent:
        return locationSent(this as LocationSent);
      case _MapState.CameraMovedLoading:
        return cameraMovedLoading(this as CameraMovedLoading);
      case _MapState.LocationsReceived:
        return locationsReceived(this as LocationsReceived);
      case _MapState.TimeChangedLoading:
        return timeChangedLoading(this as TimeChangedLoading);
      case _MapState.ErrorReceived:
        return errorReceived(this as ErrorReceived);
      case _MapState.MyCurrentLocationAvailable:
        return myCurrentLocationAvailable(this as MyCurrentLocationAvailable);
      case _MapState.MyCurrentLocationPermissionGranted:
        return myCurrentLocationPermissionGranted(
            this as MyCurrentLocationPermissionGranted);
      case _MapState.MyCurrentLocationPermissionNotGrantedYet:
        return myCurrentLocationPermissionNotGrantedYet(
            this as MyCurrentLocationPermissionNotGrantedYet);
      case _MapState.MyCurrentLocationPermissionDenied:
        return myCurrentLocationPermissionDenied(
            this as MyCurrentLocationPermissionDenied);
      case _MapState.ShowLocationPermissionRationale:
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
      case _MapState.DontShowLocationPermissionRationale:
        return dontShowLocationPermissionRationale(
            this as DontShowLocationPermissionRationale);
      case _MapState.InitialLocationServiceRequestEnabled:
        return initialLocationServiceRequestEnabled(
            this as InitialLocationServiceRequestEnabled);
      case _MapState.InitialLocationServiceRequestDisabled:
        return initialLocationServiceRequestDisabled(
            this as InitialLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServiceRequestEnabled:
        return myCurrentLocationServiceRequestEnabled(
            this as MyCurrentLocationServiceRequestEnabled);
      case _MapState.MyCurrentLocationServiceRequestDisabled:
        return myCurrentLocationServiceRequestDisabled(
            this as MyCurrentLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServicesDisabled:
        return myCurrentLocationServicesDisabled(
            this as MyCurrentLocationServicesDisabled);
    }
  }

  R whenOrElse<R>(
      {R Function(Initial) initial,
      R Function(InitialLocationReceived) initialLocationReceived,
      R Function(InitialLocationDefault) initialLocationDefault,
      R Function(LocationUpdateReceived) locationUpdateReceived,
      R Function(LocationSent) locationSent,
      R Function(CameraMovedLoading) cameraMovedLoading,
      R Function(LocationsReceived) locationsReceived,
      R Function(TimeChangedLoading) timeChangedLoading,
      R Function(ErrorReceived) errorReceived,
      R Function(MyCurrentLocationAvailable) myCurrentLocationAvailable,
        R Function(MyCurrentLocationPermissionGranted)
        myCurrentLocationPermissionGranted,
        R Function(MyCurrentLocationPermissionNotGrantedYet)
        myCurrentLocationPermissionNotGrantedYet,
        R Function(MyCurrentLocationPermissionDenied)
        myCurrentLocationPermissionDenied,
        R Function(ShowLocationPermissionRationale)
        showLocationPermissionRationale,
        R Function(DontShowLocationPermissionRationale)
        dontShowLocationPermissionRationale,
        R Function(InitialLocationServiceRequestEnabled)
        initialLocationServiceRequestEnabled,
        R Function(InitialLocationServiceRequestDisabled)
        initialLocationServiceRequestDisabled,
        R Function(MyCurrentLocationServiceRequestEnabled)
        myCurrentLocationServiceRequestEnabled,
        R Function(MyCurrentLocationServiceRequestDisabled)
        myCurrentLocationServiceRequestDisabled,
        R Function(MyCurrentLocationServicesDisabled)
        myCurrentLocationServicesDisabled,
        @required R Function(MapState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MapState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _MapState.InitialLocationReceived:
        if (initialLocationReceived == null) break;
        return initialLocationReceived(this as InitialLocationReceived);
      case _MapState.InitialLocationDefault:
        if (initialLocationDefault == null) break;
        return initialLocationDefault(this as InitialLocationDefault);
      case _MapState.LocationUpdateReceived:
        if (locationUpdateReceived == null) break;
        return locationUpdateReceived(this as LocationUpdateReceived);
      case _MapState.LocationSent:
        if (locationSent == null) break;
        return locationSent(this as LocationSent);
      case _MapState.CameraMovedLoading:
        if (cameraMovedLoading == null) break;
        return cameraMovedLoading(this as CameraMovedLoading);
      case _MapState.LocationsReceived:
        if (locationsReceived == null) break;
        return locationsReceived(this as LocationsReceived);
      case _MapState.TimeChangedLoading:
        if (timeChangedLoading == null) break;
        return timeChangedLoading(this as TimeChangedLoading);
      case _MapState.ErrorReceived:
        if (errorReceived == null) break;
        return errorReceived(this as ErrorReceived);
      case _MapState.MyCurrentLocationAvailable:
        if (myCurrentLocationAvailable == null) break;
        return myCurrentLocationAvailable(this as MyCurrentLocationAvailable);
      case _MapState.MyCurrentLocationPermissionGranted:
        if (myCurrentLocationPermissionGranted == null) break;
        return myCurrentLocationPermissionGranted(
            this as MyCurrentLocationPermissionGranted);
      case _MapState.MyCurrentLocationPermissionNotGrantedYet:
        if (myCurrentLocationPermissionNotGrantedYet == null) break;
        return myCurrentLocationPermissionNotGrantedYet(
            this as MyCurrentLocationPermissionNotGrantedYet);
      case _MapState.MyCurrentLocationPermissionDenied:
        if (myCurrentLocationPermissionDenied == null) break;
        return myCurrentLocationPermissionDenied(
            this as MyCurrentLocationPermissionDenied);
      case _MapState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
      case _MapState.DontShowLocationPermissionRationale:
        if (dontShowLocationPermissionRationale == null) break;
        return dontShowLocationPermissionRationale(
            this as DontShowLocationPermissionRationale);
      case _MapState.InitialLocationServiceRequestEnabled:
        if (initialLocationServiceRequestEnabled == null) break;
        return initialLocationServiceRequestEnabled(
            this as InitialLocationServiceRequestEnabled);
      case _MapState.InitialLocationServiceRequestDisabled:
        if (initialLocationServiceRequestDisabled == null) break;
        return initialLocationServiceRequestDisabled(
            this as InitialLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServiceRequestEnabled:
        if (myCurrentLocationServiceRequestEnabled == null) break;
        return myCurrentLocationServiceRequestEnabled(
            this as MyCurrentLocationServiceRequestEnabled);
      case _MapState.MyCurrentLocationServiceRequestDisabled:
        if (myCurrentLocationServiceRequestDisabled == null) break;
        return myCurrentLocationServiceRequestDisabled(
            this as MyCurrentLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServicesDisabled:
        if (myCurrentLocationServicesDisabled == null) break;
        return myCurrentLocationServicesDisabled(
            this as MyCurrentLocationServicesDisabled);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Initial) initial,
      FutureOr<R> Function(InitialLocationReceived) initialLocationReceived,
      FutureOr<R> Function(InitialLocationDefault) initialLocationDefault,
      FutureOr<R> Function(LocationUpdateReceived) locationUpdateReceived,
      FutureOr<R> Function(LocationSent) locationSent,
      FutureOr<R> Function(CameraMovedLoading) cameraMovedLoading,
      FutureOr<R> Function(LocationsReceived) locationsReceived,
      FutureOr<R> Function(TimeChangedLoading) timeChangedLoading,
      FutureOr<R> Function(ErrorReceived) errorReceived,
      FutureOr<R> Function(MyCurrentLocationAvailable)
          myCurrentLocationAvailable,
        FutureOr<R> Function(MyCurrentLocationPermissionGranted)
        myCurrentLocationPermissionGranted,
        FutureOr<R> Function(MyCurrentLocationPermissionNotGrantedYet)
        myCurrentLocationPermissionNotGrantedYet,
        FutureOr<R> Function(MyCurrentLocationPermissionDenied)
        myCurrentLocationPermissionDenied,
        FutureOr<R> Function(ShowLocationPermissionRationale)
        showLocationPermissionRationale,
        FutureOr<R> Function(DontShowLocationPermissionRationale)
        dontShowLocationPermissionRationale,
        FutureOr<R> Function(InitialLocationServiceRequestEnabled)
        initialLocationServiceRequestEnabled,
        FutureOr<R> Function(InitialLocationServiceRequestDisabled)
        initialLocationServiceRequestDisabled,
        FutureOr<R> Function(MyCurrentLocationServiceRequestEnabled)
        myCurrentLocationServiceRequestEnabled,
        FutureOr<R> Function(MyCurrentLocationServiceRequestDisabled)
        myCurrentLocationServiceRequestDisabled,
        FutureOr<R> Function(MyCurrentLocationServicesDisabled)
        myCurrentLocationServicesDisabled,
        @required FutureOr<R> Function(MapState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MapState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _MapState.InitialLocationReceived:
        if (initialLocationReceived == null) break;
        return initialLocationReceived(this as InitialLocationReceived);
      case _MapState.InitialLocationDefault:
        if (initialLocationDefault == null) break;
        return initialLocationDefault(this as InitialLocationDefault);
      case _MapState.LocationUpdateReceived:
        if (locationUpdateReceived == null) break;
        return locationUpdateReceived(this as LocationUpdateReceived);
      case _MapState.LocationSent:
        if (locationSent == null) break;
        return locationSent(this as LocationSent);
      case _MapState.CameraMovedLoading:
        if (cameraMovedLoading == null) break;
        return cameraMovedLoading(this as CameraMovedLoading);
      case _MapState.LocationsReceived:
        if (locationsReceived == null) break;
        return locationsReceived(this as LocationsReceived);
      case _MapState.TimeChangedLoading:
        if (timeChangedLoading == null) break;
        return timeChangedLoading(this as TimeChangedLoading);
      case _MapState.ErrorReceived:
        if (errorReceived == null) break;
        return errorReceived(this as ErrorReceived);
      case _MapState.MyCurrentLocationAvailable:
        if (myCurrentLocationAvailable == null) break;
        return myCurrentLocationAvailable(this as MyCurrentLocationAvailable);
      case _MapState.MyCurrentLocationPermissionGranted:
        if (myCurrentLocationPermissionGranted == null) break;
        return myCurrentLocationPermissionGranted(
            this as MyCurrentLocationPermissionGranted);
      case _MapState.MyCurrentLocationPermissionNotGrantedYet:
        if (myCurrentLocationPermissionNotGrantedYet == null) break;
        return myCurrentLocationPermissionNotGrantedYet(
            this as MyCurrentLocationPermissionNotGrantedYet);
      case _MapState.MyCurrentLocationPermissionDenied:
        if (myCurrentLocationPermissionDenied == null) break;
        return myCurrentLocationPermissionDenied(
            this as MyCurrentLocationPermissionDenied);
      case _MapState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
      case _MapState.DontShowLocationPermissionRationale:
        if (dontShowLocationPermissionRationale == null) break;
        return dontShowLocationPermissionRationale(
            this as DontShowLocationPermissionRationale);
      case _MapState.InitialLocationServiceRequestEnabled:
        if (initialLocationServiceRequestEnabled == null) break;
        return initialLocationServiceRequestEnabled(
            this as InitialLocationServiceRequestEnabled);
      case _MapState.InitialLocationServiceRequestDisabled:
        if (initialLocationServiceRequestDisabled == null) break;
        return initialLocationServiceRequestDisabled(
            this as InitialLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServiceRequestEnabled:
        if (myCurrentLocationServiceRequestEnabled == null) break;
        return myCurrentLocationServiceRequestEnabled(
            this as MyCurrentLocationServiceRequestEnabled);
      case _MapState.MyCurrentLocationServiceRequestDisabled:
        if (myCurrentLocationServiceRequestDisabled == null) break;
        return myCurrentLocationServiceRequestDisabled(
            this as MyCurrentLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServicesDisabled:
        if (myCurrentLocationServicesDisabled == null) break;
        return myCurrentLocationServicesDisabled(
            this as MyCurrentLocationServicesDisabled);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Initial) initial,
      FutureOr<void> Function(InitialLocationReceived) initialLocationReceived,
      FutureOr<void> Function(InitialLocationDefault) initialLocationDefault,
      FutureOr<void> Function(LocationUpdateReceived) locationUpdateReceived,
      FutureOr<void> Function(LocationSent) locationSent,
      FutureOr<void> Function(CameraMovedLoading) cameraMovedLoading,
      FutureOr<void> Function(LocationsReceived) locationsReceived,
      FutureOr<void> Function(TimeChangedLoading) timeChangedLoading,
      FutureOr<void> Function(ErrorReceived) errorReceived,
      FutureOr<void> Function(MyCurrentLocationAvailable)
          myCurrentLocationAvailable,
        FutureOr<void> Function(MyCurrentLocationPermissionGranted)
        myCurrentLocationPermissionGranted,
        FutureOr<void> Function(MyCurrentLocationPermissionNotGrantedYet)
        myCurrentLocationPermissionNotGrantedYet,
        FutureOr<void> Function(MyCurrentLocationPermissionDenied)
        myCurrentLocationPermissionDenied,
        FutureOr<void> Function(ShowLocationPermissionRationale)
        showLocationPermissionRationale,
        FutureOr<void> Function(DontShowLocationPermissionRationale)
        dontShowLocationPermissionRationale,
        FutureOr<void> Function(InitialLocationServiceRequestEnabled)
        initialLocationServiceRequestEnabled,
        FutureOr<void> Function(InitialLocationServiceRequestDisabled)
        initialLocationServiceRequestDisabled,
        FutureOr<void> Function(MyCurrentLocationServiceRequestEnabled)
        myCurrentLocationServiceRequestEnabled,
        FutureOr<void> Function(MyCurrentLocationServiceRequestDisabled)
        myCurrentLocationServiceRequestDisabled,
        FutureOr<void> Function(MyCurrentLocationServicesDisabled)
        myCurrentLocationServicesDisabled}) {
    assert(() {
      if (initial == null &&
          initialLocationReceived == null &&
          initialLocationDefault == null &&
          locationUpdateReceived == null &&
          locationSent == null &&
          cameraMovedLoading == null &&
          locationsReceived == null &&
          timeChangedLoading == null &&
          errorReceived == null &&
          myCurrentLocationAvailable == null &&
          myCurrentLocationPermissionGranted == null &&
          myCurrentLocationPermissionNotGrantedYet == null &&
          myCurrentLocationPermissionDenied == null &&
          showLocationPermissionRationale == null &&
          dontShowLocationPermissionRationale == null &&
          initialLocationServiceRequestEnabled == null &&
          initialLocationServiceRequestDisabled == null &&
          myCurrentLocationServiceRequestEnabled == null &&
          myCurrentLocationServiceRequestDisabled == null &&
          myCurrentLocationServicesDisabled == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MapState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _MapState.InitialLocationReceived:
        if (initialLocationReceived == null) break;
        return initialLocationReceived(this as InitialLocationReceived);
      case _MapState.InitialLocationDefault:
        if (initialLocationDefault == null) break;
        return initialLocationDefault(this as InitialLocationDefault);
      case _MapState.LocationUpdateReceived:
        if (locationUpdateReceived == null) break;
        return locationUpdateReceived(this as LocationUpdateReceived);
      case _MapState.LocationSent:
        if (locationSent == null) break;
        return locationSent(this as LocationSent);
      case _MapState.CameraMovedLoading:
        if (cameraMovedLoading == null) break;
        return cameraMovedLoading(this as CameraMovedLoading);
      case _MapState.LocationsReceived:
        if (locationsReceived == null) break;
        return locationsReceived(this as LocationsReceived);
      case _MapState.TimeChangedLoading:
        if (timeChangedLoading == null) break;
        return timeChangedLoading(this as TimeChangedLoading);
      case _MapState.ErrorReceived:
        if (errorReceived == null) break;
        return errorReceived(this as ErrorReceived);
      case _MapState.MyCurrentLocationAvailable:
        if (myCurrentLocationAvailable == null) break;
        return myCurrentLocationAvailable(this as MyCurrentLocationAvailable);
      case _MapState.MyCurrentLocationPermissionGranted:
        if (myCurrentLocationPermissionGranted == null) break;
        return myCurrentLocationPermissionGranted(
            this as MyCurrentLocationPermissionGranted);
      case _MapState.MyCurrentLocationPermissionNotGrantedYet:
        if (myCurrentLocationPermissionNotGrantedYet == null) break;
        return myCurrentLocationPermissionNotGrantedYet(
            this as MyCurrentLocationPermissionNotGrantedYet);
      case _MapState.MyCurrentLocationPermissionDenied:
        if (myCurrentLocationPermissionDenied == null) break;
        return myCurrentLocationPermissionDenied(
            this as MyCurrentLocationPermissionDenied);
      case _MapState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
      case _MapState.DontShowLocationPermissionRationale:
        if (dontShowLocationPermissionRationale == null) break;
        return dontShowLocationPermissionRationale(
            this as DontShowLocationPermissionRationale);
      case _MapState.InitialLocationServiceRequestEnabled:
        if (initialLocationServiceRequestEnabled == null) break;
        return initialLocationServiceRequestEnabled(
            this as InitialLocationServiceRequestEnabled);
      case _MapState.InitialLocationServiceRequestDisabled:
        if (initialLocationServiceRequestDisabled == null) break;
        return initialLocationServiceRequestDisabled(
            this as InitialLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServiceRequestEnabled:
        if (myCurrentLocationServiceRequestEnabled == null) break;
        return myCurrentLocationServiceRequestEnabled(
            this as MyCurrentLocationServiceRequestEnabled);
      case _MapState.MyCurrentLocationServiceRequestDisabled:
        if (myCurrentLocationServiceRequestDisabled == null) break;
        return myCurrentLocationServiceRequestDisabled(
            this as MyCurrentLocationServiceRequestDisabled);
      case _MapState.MyCurrentLocationServicesDisabled:
        if (myCurrentLocationServicesDisabled == null) break;
        return myCurrentLocationServicesDisabled(
            this as MyCurrentLocationServicesDisabled);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Initial extends MapState {
  const Initial._() : super(_MapState.Initial);

  factory Initial() {
    _instance ??= const Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class InitialLocationReceived extends MapState {
  const InitialLocationReceived({@required this.location})
      : super(_MapState.InitialLocationReceived);

  final LatLng location;

  @override
  String toString() => 'InitialLocationReceived(location:${this.location})';
  @override
  List get props => [location];
}

@immutable
class InitialLocationDefault extends MapState {
  const InitialLocationDefault(
      {@required this.location, @required this.locationServiceEnabled})
      : super(_MapState.InitialLocationDefault);

  final LatLng location;

  final bool locationServiceEnabled;

  @override
  String toString() =>
      'InitialLocationDefault(location:${this
          .location},locationServiceEnabled:${this.locationServiceEnabled})';

  @override
  List get props => [location, locationServiceEnabled];
}

@immutable
class LocationUpdateReceived extends MapState {
  const LocationUpdateReceived({@required this.location})
      : super(_MapState.LocationUpdateReceived);

  final LatLng location;

  @override
  String toString() => 'LocationUpdateReceived(location:${this.location})';
  @override
  List get props => [location];
}

@immutable
class LocationSent extends MapState {
  const LocationSent._() : super(_MapState.LocationSent);

  factory LocationSent() {
    _instance ??= const LocationSent._();
    return _instance;
  }

  static LocationSent _instance;
}

@immutable
class CameraMovedLoading extends MapState {
  const CameraMovedLoading._() : super(_MapState.CameraMovedLoading);

  factory CameraMovedLoading() {
    _instance ??= const CameraMovedLoading._();
    return _instance;
  }

  static CameraMovedLoading _instance;
}

@immutable
class LocationsReceived extends MapState {
  const LocationsReceived({@required this.locations})
      : super(_MapState.LocationsReceived);

  final List<UserLocationWithTime> locations;

  @override
  String toString() => 'LocationsReceived(locations:${this.locations})';
  @override
  List get props => [locations];
}

@immutable
class TimeChangedLoading extends MapState {
  const TimeChangedLoading._() : super(_MapState.TimeChangedLoading);

  factory TimeChangedLoading() {
    _instance ??= const TimeChangedLoading._();
    return _instance;
  }

  static TimeChangedLoading _instance;
}

@immutable
class ErrorReceived extends MapState {
  const ErrorReceived({@required this.error}) : super(_MapState.ErrorReceived);

  final String error;

  @override
  String toString() => 'ErrorReceived(error:${this.error})';
  @override
  List get props => [error];
}

@immutable
class MyCurrentLocationAvailable extends MapState {
  const MyCurrentLocationAvailable({@required this.location})
      : super(_MapState.MyCurrentLocationAvailable);

  final LatLng location;

  @override
  String toString() => 'MyCurrentLocationAvailable(location:${this.location})';
  @override
  List get props => [location];
}

@immutable
class MyCurrentLocationPermissionGranted extends MapState {
  const MyCurrentLocationPermissionGranted._()
      : super(_MapState.MyCurrentLocationPermissionGranted);

  factory MyCurrentLocationPermissionGranted() {
    _instance ??= const MyCurrentLocationPermissionGranted._();
    return _instance;
  }

  static MyCurrentLocationPermissionGranted _instance;
}

@immutable
class MyCurrentLocationPermissionNotGrantedYet extends MapState {
  const MyCurrentLocationPermissionNotGrantedYet._()
      : super(_MapState.MyCurrentLocationPermissionNotGrantedYet);

  factory MyCurrentLocationPermissionNotGrantedYet() {
    _instance ??= const MyCurrentLocationPermissionNotGrantedYet._();
    return _instance;
  }

  static MyCurrentLocationPermissionNotGrantedYet _instance;
}

@immutable
class MyCurrentLocationPermissionDenied extends MapState {
  const MyCurrentLocationPermissionDenied._()
      : super(_MapState.MyCurrentLocationPermissionDenied);

  factory MyCurrentLocationPermissionDenied() {
    _instance ??= const MyCurrentLocationPermissionDenied._();
    return _instance;
  }

  static MyCurrentLocationPermissionDenied _instance;
}

@immutable
class ShowLocationPermissionRationale extends MapState {
  const ShowLocationPermissionRationale._()
      : super(_MapState.ShowLocationPermissionRationale);

  factory ShowLocationPermissionRationale() {
    _instance ??= const ShowLocationPermissionRationale._();
    return _instance;
  }

  static ShowLocationPermissionRationale _instance;
}

@immutable
class DontShowLocationPermissionRationale extends MapState {
  const DontShowLocationPermissionRationale._()
      : super(_MapState.DontShowLocationPermissionRationale);

  factory DontShowLocationPermissionRationale() {
    _instance ??= const DontShowLocationPermissionRationale._();
    return _instance;
  }

  static DontShowLocationPermissionRationale _instance;
}

@immutable
class InitialLocationServiceRequestEnabled extends MapState {
  const InitialLocationServiceRequestEnabled._()
      : super(_MapState.InitialLocationServiceRequestEnabled);

  factory InitialLocationServiceRequestEnabled() {
    _instance ??= const InitialLocationServiceRequestEnabled._();
    return _instance;
  }

  static InitialLocationServiceRequestEnabled _instance;
}

@immutable
class InitialLocationServiceRequestDisabled extends MapState {
  const InitialLocationServiceRequestDisabled._()
      : super(_MapState.InitialLocationServiceRequestDisabled);

  factory InitialLocationServiceRequestDisabled() {
    _instance ??= const InitialLocationServiceRequestDisabled._();
    return _instance;
  }

  static InitialLocationServiceRequestDisabled _instance;
}

@immutable
class MyCurrentLocationServiceRequestEnabled extends MapState {
  const MyCurrentLocationServiceRequestEnabled._()
      : super(_MapState.MyCurrentLocationServiceRequestEnabled);

  factory MyCurrentLocationServiceRequestEnabled() {
    _instance ??= const MyCurrentLocationServiceRequestEnabled._();
    return _instance;
  }

  static MyCurrentLocationServiceRequestEnabled _instance;
}

@immutable
class MyCurrentLocationServiceRequestDisabled extends MapState {
  const MyCurrentLocationServiceRequestDisabled._()
      : super(_MapState.MyCurrentLocationServiceRequestDisabled);

  factory MyCurrentLocationServiceRequestDisabled() {
    _instance ??= const MyCurrentLocationServiceRequestDisabled._();
    return _instance;
  }

  static MyCurrentLocationServiceRequestDisabled _instance;
}

@immutable
class MyCurrentLocationServicesDisabled extends MapState {
  const MyCurrentLocationServicesDisabled._()
      : super(_MapState.MyCurrentLocationServicesDisabled);

  factory MyCurrentLocationServicesDisabled() {
    _instance ??= const MyCurrentLocationServicesDisabled._();
    return _instance;
  }

  static MyCurrentLocationServicesDisabled _instance;
}
