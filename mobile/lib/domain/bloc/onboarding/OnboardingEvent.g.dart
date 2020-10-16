// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OnboardingEvent.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent(this._type);

  factory OnboardingEvent.checkPermission() = CheckPermission;

  factory OnboardingEvent.requestPermission() = RequestPermission;

  factory OnboardingEvent.shouldShowPermissionRationale() =
      ShouldShowPermissionRationale;

  final _OnboardingEvent _type;

//ignore: missing_return
  R when<R>(
      {@required
          R Function(CheckPermission) checkPermission,
      @required
          R Function(RequestPermission) requestPermission,
      @required
          R Function(ShouldShowPermissionRationale)
              shouldShowPermissionRationale}) {
    assert(() {
      if (checkPermission == null ||
          requestPermission == null ||
          shouldShowPermissionRationale == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingEvent.CheckPermission:
        return checkPermission(this as CheckPermission);
      case _OnboardingEvent.RequestPermission:
        return requestPermission(this as RequestPermission);
      case _OnboardingEvent.ShouldShowPermissionRationale:
        return shouldShowPermissionRationale(
            this as ShouldShowPermissionRationale);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(CheckPermission) checkPermission,
      @required
          FutureOr<R> Function(RequestPermission) requestPermission,
      @required
          FutureOr<R> Function(ShouldShowPermissionRationale)
              shouldShowPermissionRationale}) {
    assert(() {
      if (checkPermission == null ||
          requestPermission == null ||
          shouldShowPermissionRationale == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingEvent.CheckPermission:
        return checkPermission(this as CheckPermission);
      case _OnboardingEvent.RequestPermission:
        return requestPermission(this as RequestPermission);
      case _OnboardingEvent.ShouldShowPermissionRationale:
        return shouldShowPermissionRationale(
            this as ShouldShowPermissionRationale);
    }
  }

  R whenOrElse<R>(
      {R Function(CheckPermission) checkPermission,
      R Function(RequestPermission) requestPermission,
      R Function(ShouldShowPermissionRationale) shouldShowPermissionRationale,
      @required R Function(OnboardingEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingEvent.CheckPermission:
        if (checkPermission == null) break;
        return checkPermission(this as CheckPermission);
      case _OnboardingEvent.RequestPermission:
        if (requestPermission == null) break;
        return requestPermission(this as RequestPermission);
      case _OnboardingEvent.ShouldShowPermissionRationale:
        if (shouldShowPermissionRationale == null) break;
        return shouldShowPermissionRationale(
            this as ShouldShowPermissionRationale);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(CheckPermission) checkPermission,
      FutureOr<R> Function(RequestPermission) requestPermission,
      FutureOr<R> Function(ShouldShowPermissionRationale)
          shouldShowPermissionRationale,
      @required FutureOr<R> Function(OnboardingEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingEvent.CheckPermission:
        if (checkPermission == null) break;
        return checkPermission(this as CheckPermission);
      case _OnboardingEvent.RequestPermission:
        if (requestPermission == null) break;
        return requestPermission(this as RequestPermission);
      case _OnboardingEvent.ShouldShowPermissionRationale:
        if (shouldShowPermissionRationale == null) break;
        return shouldShowPermissionRationale(
            this as ShouldShowPermissionRationale);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(CheckPermission) checkPermission,
      FutureOr<void> Function(RequestPermission) requestPermission,
      FutureOr<void> Function(ShouldShowPermissionRationale)
          shouldShowPermissionRationale}) {
    assert(() {
      if (checkPermission == null &&
          requestPermission == null &&
          shouldShowPermissionRationale == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingEvent.CheckPermission:
        if (checkPermission == null) break;
        return checkPermission(this as CheckPermission);
      case _OnboardingEvent.RequestPermission:
        if (requestPermission == null) break;
        return requestPermission(this as RequestPermission);
      case _OnboardingEvent.ShouldShowPermissionRationale:
        if (shouldShowPermissionRationale == null) break;
        return shouldShowPermissionRationale(
            this as ShouldShowPermissionRationale);
    }
  }

  @override
  List get props => const [];
}

@immutable
class CheckPermission extends OnboardingEvent {
  const CheckPermission._() : super(_OnboardingEvent.CheckPermission);

  factory CheckPermission() {
    _instance ??= const CheckPermission._();
    return _instance;
  }

  static CheckPermission _instance;
}

@immutable
class RequestPermission extends OnboardingEvent {
  const RequestPermission._() : super(_OnboardingEvent.RequestPermission);

  factory RequestPermission() {
    _instance ??= const RequestPermission._();
    return _instance;
  }

  static RequestPermission _instance;
}

@immutable
class ShouldShowPermissionRationale extends OnboardingEvent {
  const ShouldShowPermissionRationale._()
      : super(_OnboardingEvent.ShouldShowPermissionRationale);

  factory ShouldShowPermissionRationale() {
    _instance ??= const ShouldShowPermissionRationale._();
    return _instance;
  }

  static ShouldShowPermissionRationale _instance;
}
