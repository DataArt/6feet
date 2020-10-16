// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MapEvent.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class MapEvent extends Equatable {
  const MapEvent(this._type);

  factory MapEvent.getInitialLocation() = GetInitialLocation;

  factory MapEvent.startListenLocationUpdates() = StartListenLocationUpdates;

  factory MapEvent.myLocationButtonPressed() = MyLocationButtonPressed;

  factory MapEvent.getMyLocation() = GetMyLocation;

  factory MapEvent.sendLocation({@required UserLocation location}) =
      SendLocation;

  factory MapEvent.changeTime() = ChangeTime;

  factory MapEvent.getLocationsForSelectedTime(
      {@required int hour,
      @required LatLngBounds bounds}) = GetLocationsForSelectedTime;

  factory MapEvent.cameraMoved() = CameraMoved;

  factory MapEvent.getLocationsForCameraMoved({@required LatLngBounds bounds}) =
      GetLocationsForCameraMoved;

  factory MapEvent.requestLocationPermission() = RequestLocationPermission;

  factory MapEvent.shouldShowLocationPermissionRationale() =
      ShouldShowLocationPermissionRationale;

  factory MapEvent.requestLocationServiceForInitialState() =
      RequestLocationServiceForInitialState;

  factory MapEvent.requestLocationServiceForMyCurrentLocationButtonClick() =
      RequestLocationServiceForMyCurrentLocationButtonClick;

  final _MapEvent _type;

//ignore: missing_return
  R when<R>(
      {@required
          R Function(GetInitialLocation) getInitialLocation,
      @required
          R Function(StartListenLocationUpdates) startListenLocationUpdates,
      @required
          R Function(MyLocationButtonPressed) myLocationButtonPressed,
      @required
          R Function(GetMyLocation) getMyLocation,
      @required
          R Function(SendLocation) sendLocation,
      @required
          R Function(ChangeTime) changeTime,
      @required
          R Function(GetLocationsForSelectedTime) getLocationsForSelectedTime,
    @required R Function(CameraMoved) cameraMoved,
    @required R Function(GetLocationsForCameraMoved) getLocationsForCameraMoved,
    @required R Function(RequestLocationPermission) requestLocationPermission,
    @required R Function(ShouldShowLocationPermissionRationale)
    shouldShowLocationPermissionRationale,
    @required R Function(RequestLocationServiceForInitialState)
    requestLocationServiceForInitialState,
    @required R Function(RequestLocationServiceForMyCurrentLocationButtonClick)
    requestLocationServiceForMyCurrentLocationButtonClick}) {
    assert(() {
      if (getInitialLocation == null ||
          startListenLocationUpdates == null ||
          myLocationButtonPressed == null ||
          getMyLocation == null ||
          sendLocation == null ||
          changeTime == null ||
          getLocationsForSelectedTime == null ||
          cameraMoved == null ||
          getLocationsForCameraMoved == null ||
          requestLocationPermission == null ||
          shouldShowLocationPermissionRationale == null ||
          requestLocationServiceForInitialState == null ||
          requestLocationServiceForMyCurrentLocationButtonClick == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MapEvent.GetInitialLocation:
        return getInitialLocation(this as GetInitialLocation);
      case _MapEvent.StartListenLocationUpdates:
        return startListenLocationUpdates(this as StartListenLocationUpdates);
      case _MapEvent.MyLocationButtonPressed:
        return myLocationButtonPressed(this as MyLocationButtonPressed);
      case _MapEvent.GetMyLocation:
        return getMyLocation(this as GetMyLocation);
      case _MapEvent.SendLocation:
        return sendLocation(this as SendLocation);
      case _MapEvent.ChangeTime:
        return changeTime(this as ChangeTime);
      case _MapEvent.GetLocationsForSelectedTime:
        return getLocationsForSelectedTime(this as GetLocationsForSelectedTime);
      case _MapEvent.CameraMoved:
        return cameraMoved(this as CameraMoved);
      case _MapEvent.GetLocationsForCameraMoved:
        return getLocationsForCameraMoved(this as GetLocationsForCameraMoved);
      case _MapEvent.RequestLocationPermission:
        return requestLocationPermission(this as RequestLocationPermission);
      case _MapEvent.ShouldShowLocationPermissionRationale:
        return shouldShowLocationPermissionRationale(
            this as ShouldShowLocationPermissionRationale);
      case _MapEvent.RequestLocationServiceForInitialState:
        return requestLocationServiceForInitialState(
            this as RequestLocationServiceForInitialState);
      case _MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick:
        return requestLocationServiceForMyCurrentLocationButtonClick(
            this as RequestLocationServiceForMyCurrentLocationButtonClick);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(GetInitialLocation) getInitialLocation,
      @required
          FutureOr<R> Function(StartListenLocationUpdates)
              startListenLocationUpdates,
      @required
          FutureOr<R> Function(MyLocationButtonPressed) myLocationButtonPressed,
      @required
          FutureOr<R> Function(GetMyLocation) getMyLocation,
      @required
          FutureOr<R> Function(SendLocation) sendLocation,
      @required
          FutureOr<R> Function(ChangeTime) changeTime,
      @required
          FutureOr<R> Function(GetLocationsForSelectedTime)
              getLocationsForSelectedTime,
      @required
          FutureOr<R> Function(CameraMoved) cameraMoved,
        @required FutureOr<R> Function(GetLocationsForCameraMoved)
        getLocationsForCameraMoved,
        @required FutureOr<R> Function(RequestLocationPermission)
        requestLocationPermission,
        @required FutureOr<R> Function(ShouldShowLocationPermissionRationale)
        shouldShowLocationPermissionRationale,
        @required FutureOr<R> Function(RequestLocationServiceForInitialState)
        requestLocationServiceForInitialState,
        @required FutureOr<R> Function(
            RequestLocationServiceForMyCurrentLocationButtonClick)
        requestLocationServiceForMyCurrentLocationButtonClick}) {
    assert(() {
      if (getInitialLocation == null ||
          startListenLocationUpdates == null ||
          myLocationButtonPressed == null ||
          getMyLocation == null ||
          sendLocation == null ||
          changeTime == null ||
          getLocationsForSelectedTime == null ||
          cameraMoved == null ||
          getLocationsForCameraMoved == null ||
          requestLocationPermission == null ||
          shouldShowLocationPermissionRationale == null ||
          requestLocationServiceForInitialState == null ||
          requestLocationServiceForMyCurrentLocationButtonClick == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _MapEvent.GetInitialLocation:
        return getInitialLocation(this as GetInitialLocation);
      case _MapEvent.StartListenLocationUpdates:
        return startListenLocationUpdates(this as StartListenLocationUpdates);
      case _MapEvent.MyLocationButtonPressed:
        return myLocationButtonPressed(this as MyLocationButtonPressed);
      case _MapEvent.GetMyLocation:
        return getMyLocation(this as GetMyLocation);
      case _MapEvent.SendLocation:
        return sendLocation(this as SendLocation);
      case _MapEvent.ChangeTime:
        return changeTime(this as ChangeTime);
      case _MapEvent.GetLocationsForSelectedTime:
        return getLocationsForSelectedTime(this as GetLocationsForSelectedTime);
      case _MapEvent.CameraMoved:
        return cameraMoved(this as CameraMoved);
      case _MapEvent.GetLocationsForCameraMoved:
        return getLocationsForCameraMoved(this as GetLocationsForCameraMoved);
      case _MapEvent.RequestLocationPermission:
        return requestLocationPermission(this as RequestLocationPermission);
      case _MapEvent.ShouldShowLocationPermissionRationale:
        return shouldShowLocationPermissionRationale(
            this as ShouldShowLocationPermissionRationale);
      case _MapEvent.RequestLocationServiceForInitialState:
        return requestLocationServiceForInitialState(
            this as RequestLocationServiceForInitialState);
      case _MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick:
        return requestLocationServiceForMyCurrentLocationButtonClick(
            this as RequestLocationServiceForMyCurrentLocationButtonClick);
    }
  }

  R whenOrElse<R>(
      {R Function(GetInitialLocation) getInitialLocation,
      R Function(StartListenLocationUpdates) startListenLocationUpdates,
        R Function(MyLocationButtonPressed) myLocationButtonPressed,
        R Function(GetMyLocation) getMyLocation,
        R Function(SendLocation) sendLocation,
        R Function(ChangeTime) changeTime,
        R Function(GetLocationsForSelectedTime) getLocationsForSelectedTime,
        R Function(CameraMoved) cameraMoved,
        R Function(GetLocationsForCameraMoved) getLocationsForCameraMoved,
        R Function(RequestLocationPermission) requestLocationPermission,
        R Function(ShouldShowLocationPermissionRationale)
        shouldShowLocationPermissionRationale,
        R Function(RequestLocationServiceForInitialState)
        requestLocationServiceForInitialState,
        R Function(RequestLocationServiceForMyCurrentLocationButtonClick)
        requestLocationServiceForMyCurrentLocationButtonClick,
        @required R Function(MapEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MapEvent.GetInitialLocation:
        if (getInitialLocation == null) break;
        return getInitialLocation(this as GetInitialLocation);
      case _MapEvent.StartListenLocationUpdates:
        if (startListenLocationUpdates == null) break;
        return startListenLocationUpdates(this as StartListenLocationUpdates);
      case _MapEvent.MyLocationButtonPressed:
        if (myLocationButtonPressed == null) break;
        return myLocationButtonPressed(this as MyLocationButtonPressed);
      case _MapEvent.GetMyLocation:
        if (getMyLocation == null) break;
        return getMyLocation(this as GetMyLocation);
      case _MapEvent.SendLocation:
        if (sendLocation == null) break;
        return sendLocation(this as SendLocation);
      case _MapEvent.ChangeTime:
        if (changeTime == null) break;
        return changeTime(this as ChangeTime);
      case _MapEvent.GetLocationsForSelectedTime:
        if (getLocationsForSelectedTime == null) break;
        return getLocationsForSelectedTime(this as GetLocationsForSelectedTime);
      case _MapEvent.CameraMoved:
        if (cameraMoved == null) break;
        return cameraMoved(this as CameraMoved);
      case _MapEvent.GetLocationsForCameraMoved:
        if (getLocationsForCameraMoved == null) break;
        return getLocationsForCameraMoved(this as GetLocationsForCameraMoved);
      case _MapEvent.RequestLocationPermission:
        if (requestLocationPermission == null) break;
        return requestLocationPermission(this as RequestLocationPermission);
      case _MapEvent.ShouldShowLocationPermissionRationale:
        if (shouldShowLocationPermissionRationale == null) break;
        return shouldShowLocationPermissionRationale(
            this as ShouldShowLocationPermissionRationale);
      case _MapEvent.RequestLocationServiceForInitialState:
        if (requestLocationServiceForInitialState == null) break;
        return requestLocationServiceForInitialState(
            this as RequestLocationServiceForInitialState);
      case _MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick:
        if (requestLocationServiceForMyCurrentLocationButtonClick == null)
          break;
        return requestLocationServiceForMyCurrentLocationButtonClick(
            this as RequestLocationServiceForMyCurrentLocationButtonClick);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetInitialLocation) getInitialLocation,
      FutureOr<R> Function(StartListenLocationUpdates)
          startListenLocationUpdates,
      FutureOr<R> Function(MyLocationButtonPressed) myLocationButtonPressed,
      FutureOr<R> Function(GetMyLocation) getMyLocation,
        FutureOr<R> Function(SendLocation) sendLocation,
        FutureOr<R> Function(ChangeTime) changeTime,
        FutureOr<R> Function(GetLocationsForSelectedTime)
        getLocationsForSelectedTime,
        FutureOr<R> Function(CameraMoved) cameraMoved,
        FutureOr<R> Function(GetLocationsForCameraMoved)
        getLocationsForCameraMoved,
        FutureOr<
            R> Function(RequestLocationPermission) requestLocationPermission,
        FutureOr<R> Function(ShouldShowLocationPermissionRationale)
        shouldShowLocationPermissionRationale,
        FutureOr<R> Function(RequestLocationServiceForInitialState)
        requestLocationServiceForInitialState,
        FutureOr<R> Function(
            RequestLocationServiceForMyCurrentLocationButtonClick)
        requestLocationServiceForMyCurrentLocationButtonClick,
        @required FutureOr<R> Function(MapEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _MapEvent.GetInitialLocation:
        if (getInitialLocation == null) break;
        return getInitialLocation(this as GetInitialLocation);
      case _MapEvent.StartListenLocationUpdates:
        if (startListenLocationUpdates == null) break;
        return startListenLocationUpdates(this as StartListenLocationUpdates);
      case _MapEvent.MyLocationButtonPressed:
        if (myLocationButtonPressed == null) break;
        return myLocationButtonPressed(this as MyLocationButtonPressed);
      case _MapEvent.GetMyLocation:
        if (getMyLocation == null) break;
        return getMyLocation(this as GetMyLocation);
      case _MapEvent.SendLocation:
        if (sendLocation == null) break;
        return sendLocation(this as SendLocation);
      case _MapEvent.ChangeTime:
        if (changeTime == null) break;
        return changeTime(this as ChangeTime);
      case _MapEvent.GetLocationsForSelectedTime:
        if (getLocationsForSelectedTime == null) break;
        return getLocationsForSelectedTime(this as GetLocationsForSelectedTime);
      case _MapEvent.CameraMoved:
        if (cameraMoved == null) break;
        return cameraMoved(this as CameraMoved);
      case _MapEvent.GetLocationsForCameraMoved:
        if (getLocationsForCameraMoved == null) break;
        return getLocationsForCameraMoved(this as GetLocationsForCameraMoved);
      case _MapEvent.RequestLocationPermission:
        if (requestLocationPermission == null) break;
        return requestLocationPermission(this as RequestLocationPermission);
      case _MapEvent.ShouldShowLocationPermissionRationale:
        if (shouldShowLocationPermissionRationale == null) break;
        return shouldShowLocationPermissionRationale(
            this as ShouldShowLocationPermissionRationale);
      case _MapEvent.RequestLocationServiceForInitialState:
        if (requestLocationServiceForInitialState == null) break;
        return requestLocationServiceForInitialState(
            this as RequestLocationServiceForInitialState);
      case _MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick:
        if (requestLocationServiceForMyCurrentLocationButtonClick == null)
          break;
        return requestLocationServiceForMyCurrentLocationButtonClick(
            this as RequestLocationServiceForMyCurrentLocationButtonClick);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(GetInitialLocation) getInitialLocation,
      FutureOr<void> Function(StartListenLocationUpdates)
          startListenLocationUpdates,
      FutureOr<void> Function(MyLocationButtonPressed) myLocationButtonPressed,
      FutureOr<void> Function(GetMyLocation) getMyLocation,
      FutureOr<void> Function(SendLocation) sendLocation,
        FutureOr<void> Function(ChangeTime) changeTime,
        FutureOr<void> Function(GetLocationsForSelectedTime)
        getLocationsForSelectedTime,
        FutureOr<void> Function(CameraMoved) cameraMoved,
        FutureOr<void> Function(GetLocationsForCameraMoved)
        getLocationsForCameraMoved,
        FutureOr<void> Function(RequestLocationPermission)
        requestLocationPermission,
        FutureOr<void> Function(ShouldShowLocationPermissionRationale)
        shouldShowLocationPermissionRationale,
        FutureOr<void> Function(RequestLocationServiceForInitialState)
        requestLocationServiceForInitialState,
        FutureOr<void> Function(
            RequestLocationServiceForMyCurrentLocationButtonClick)
        requestLocationServiceForMyCurrentLocationButtonClick}) {
    assert(() {
      if (getInitialLocation == null &&
          startListenLocationUpdates == null &&
          myLocationButtonPressed == null &&
          getMyLocation == null &&
          sendLocation == null &&
          changeTime == null &&
          getLocationsForSelectedTime == null &&
          cameraMoved == null &&
          getLocationsForCameraMoved == null &&
          requestLocationPermission == null &&
          shouldShowLocationPermissionRationale == null &&
          requestLocationServiceForInitialState == null &&
          requestLocationServiceForMyCurrentLocationButtonClick == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _MapEvent.GetInitialLocation:
        if (getInitialLocation == null) break;
        return getInitialLocation(this as GetInitialLocation);
      case _MapEvent.StartListenLocationUpdates:
        if (startListenLocationUpdates == null) break;
        return startListenLocationUpdates(this as StartListenLocationUpdates);
      case _MapEvent.MyLocationButtonPressed:
        if (myLocationButtonPressed == null) break;
        return myLocationButtonPressed(this as MyLocationButtonPressed);
      case _MapEvent.GetMyLocation:
        if (getMyLocation == null) break;
        return getMyLocation(this as GetMyLocation);
      case _MapEvent.SendLocation:
        if (sendLocation == null) break;
        return sendLocation(this as SendLocation);
      case _MapEvent.ChangeTime:
        if (changeTime == null) break;
        return changeTime(this as ChangeTime);
      case _MapEvent.GetLocationsForSelectedTime:
        if (getLocationsForSelectedTime == null) break;
        return getLocationsForSelectedTime(this as GetLocationsForSelectedTime);
      case _MapEvent.CameraMoved:
        if (cameraMoved == null) break;
        return cameraMoved(this as CameraMoved);
      case _MapEvent.GetLocationsForCameraMoved:
        if (getLocationsForCameraMoved == null) break;
        return getLocationsForCameraMoved(this as GetLocationsForCameraMoved);
      case _MapEvent.RequestLocationPermission:
        if (requestLocationPermission == null) break;
        return requestLocationPermission(this as RequestLocationPermission);
      case _MapEvent.ShouldShowLocationPermissionRationale:
        if (shouldShowLocationPermissionRationale == null) break;
        return shouldShowLocationPermissionRationale(
            this as ShouldShowLocationPermissionRationale);
      case _MapEvent.RequestLocationServiceForInitialState:
        if (requestLocationServiceForInitialState == null) break;
        return requestLocationServiceForInitialState(
            this as RequestLocationServiceForInitialState);
      case _MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick:
        if (requestLocationServiceForMyCurrentLocationButtonClick == null)
          break;
        return requestLocationServiceForMyCurrentLocationButtonClick(
            this as RequestLocationServiceForMyCurrentLocationButtonClick);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetInitialLocation extends MapEvent {
  const GetInitialLocation._() : super(_MapEvent.GetInitialLocation);

  factory GetInitialLocation() {
    _instance ??= const GetInitialLocation._();
    return _instance;
  }

  static GetInitialLocation _instance;
}

@immutable
class StartListenLocationUpdates extends MapEvent {
  const StartListenLocationUpdates._()
      : super(_MapEvent.StartListenLocationUpdates);

  factory StartListenLocationUpdates() {
    _instance ??= const StartListenLocationUpdates._();
    return _instance;
  }

  static StartListenLocationUpdates _instance;
}

@immutable
class MyLocationButtonPressed extends MapEvent {
  const MyLocationButtonPressed._() : super(_MapEvent.MyLocationButtonPressed);

  factory MyLocationButtonPressed() {
    _instance ??= const MyLocationButtonPressed._();
    return _instance;
  }

  static MyLocationButtonPressed _instance;
}

@immutable
class GetMyLocation extends MapEvent {
  const GetMyLocation._() : super(_MapEvent.GetMyLocation);

  factory GetMyLocation() {
    _instance ??= const GetMyLocation._();
    return _instance;
  }

  static GetMyLocation _instance;
}

@immutable
class SendLocation extends MapEvent {
  const SendLocation({@required this.location}) : super(_MapEvent.SendLocation);

  final UserLocation location;

  @override
  String toString() => 'SendLocation(location:${this.location})';
  @override
  List get props => [location];
}

@immutable
class ChangeTime extends MapEvent {
  const ChangeTime._() : super(_MapEvent.ChangeTime);

  factory ChangeTime() {
    _instance ??= const ChangeTime._();
    return _instance;
  }

  static ChangeTime _instance;
}

@immutable
class GetLocationsForSelectedTime extends MapEvent {
  const GetLocationsForSelectedTime(
      {@required this.hour, @required this.bounds})
      : super(_MapEvent.GetLocationsForSelectedTime);

  final int hour;

  final LatLngBounds bounds;

  @override
  String toString() =>
      'GetLocationsForSelectedTime(hour:${this.hour},bounds:${this.bounds})';
  @override
  List get props => [hour, bounds];
}

@immutable
class CameraMoved extends MapEvent {
  const CameraMoved._() : super(_MapEvent.CameraMoved);

  factory CameraMoved() {
    _instance ??= const CameraMoved._();
    return _instance;
  }

  static CameraMoved _instance;
}

@immutable
class GetLocationsForCameraMoved extends MapEvent {
  const GetLocationsForCameraMoved({@required this.bounds})
      : super(_MapEvent.GetLocationsForCameraMoved);

  final LatLngBounds bounds;

  @override
  String toString() => 'GetLocationsForCameraMoved(bounds:${this.bounds})';
  @override
  List get props => [bounds];
}

@immutable
class RequestLocationPermission extends MapEvent {
  const RequestLocationPermission._()
      : super(_MapEvent.RequestLocationPermission);

  factory RequestLocationPermission() {
    _instance ??= const RequestLocationPermission._();
    return _instance;
  }

  static RequestLocationPermission _instance;
}

@immutable
class ShouldShowLocationPermissionRationale extends MapEvent {
  const ShouldShowLocationPermissionRationale._()
      : super(_MapEvent.ShouldShowLocationPermissionRationale);

  factory ShouldShowLocationPermissionRationale() {
    _instance ??= const ShouldShowLocationPermissionRationale._();
    return _instance;
  }

  static ShouldShowLocationPermissionRationale _instance;
}

@immutable
class RequestLocationServiceForInitialState extends MapEvent {
  const RequestLocationServiceForInitialState._()
      : super(_MapEvent.RequestLocationServiceForInitialState);

  factory RequestLocationServiceForInitialState() {
    _instance ??= const RequestLocationServiceForInitialState._();
    return _instance;
  }

  static RequestLocationServiceForInitialState _instance;
}

@immutable
class RequestLocationServiceForMyCurrentLocationButtonClick extends MapEvent {
  const RequestLocationServiceForMyCurrentLocationButtonClick._()
      : super(_MapEvent.RequestLocationServiceForMyCurrentLocationButtonClick);

  factory RequestLocationServiceForMyCurrentLocationButtonClick() {
    _instance ??=
    const RequestLocationServiceForMyCurrentLocationButtonClick._();
    return _instance;
  }

  static RequestLocationServiceForMyCurrentLocationButtonClick _instance;
}
