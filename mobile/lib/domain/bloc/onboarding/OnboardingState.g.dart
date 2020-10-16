// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OnboardingState.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class OnboardingState extends Equatable {
  const OnboardingState(this._type);

  factory OnboardingState.initial() = Initial;

  factory OnboardingState.granted() = Granted;

  factory OnboardingState.notGrantedYet() = NotGrantedYet;

  factory OnboardingState.denied() = Denied;

  factory OnboardingState.showLocationPermissionRationale() =
      ShowLocationPermissionRationale;

  final _OnboardingState _type;

//ignore: missing_return
  R when<R>(
      {@required
          R Function(Initial) initial,
      @required
          R Function(Granted) granted,
      @required
          R Function(NotGrantedYet) notGrantedYet,
      @required
          R Function(Denied) denied,
      @required
          R Function(ShowLocationPermissionRationale)
              showLocationPermissionRationale}) {
    assert(() {
      if (initial == null ||
          granted == null ||
          notGrantedYet == null ||
          denied == null ||
          showLocationPermissionRationale == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingState.Initial:
        return initial(this as Initial);
      case _OnboardingState.Granted:
        return granted(this as Granted);
      case _OnboardingState.NotGrantedYet:
        return notGrantedYet(this as NotGrantedYet);
      case _OnboardingState.Denied:
        return denied(this as Denied);
      case _OnboardingState.ShowLocationPermissionRationale:
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(Initial) initial,
      @required
          FutureOr<R> Function(Granted) granted,
      @required
          FutureOr<R> Function(NotGrantedYet) notGrantedYet,
      @required
          FutureOr<R> Function(Denied) denied,
      @required
          FutureOr<R> Function(ShowLocationPermissionRationale)
              showLocationPermissionRationale}) {
    assert(() {
      if (initial == null ||
          granted == null ||
          notGrantedYet == null ||
          denied == null ||
          showLocationPermissionRationale == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingState.Initial:
        return initial(this as Initial);
      case _OnboardingState.Granted:
        return granted(this as Granted);
      case _OnboardingState.NotGrantedYet:
        return notGrantedYet(this as NotGrantedYet);
      case _OnboardingState.Denied:
        return denied(this as Denied);
      case _OnboardingState.ShowLocationPermissionRationale:
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
    }
  }

  R whenOrElse<R>(
      {R Function(Initial) initial,
      R Function(Granted) granted,
      R Function(NotGrantedYet) notGrantedYet,
      R Function(Denied) denied,
      R Function(ShowLocationPermissionRationale)
          showLocationPermissionRationale,
      @required R Function(OnboardingState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _OnboardingState.Granted:
        if (granted == null) break;
        return granted(this as Granted);
      case _OnboardingState.NotGrantedYet:
        if (notGrantedYet == null) break;
        return notGrantedYet(this as NotGrantedYet);
      case _OnboardingState.Denied:
        if (denied == null) break;
        return denied(this as Denied);
      case _OnboardingState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Initial) initial,
      FutureOr<R> Function(Granted) granted,
      FutureOr<R> Function(NotGrantedYet) notGrantedYet,
      FutureOr<R> Function(Denied) denied,
      FutureOr<R> Function(ShowLocationPermissionRationale)
          showLocationPermissionRationale,
      @required FutureOr<R> Function(OnboardingState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _OnboardingState.Granted:
        if (granted == null) break;
        return granted(this as Granted);
      case _OnboardingState.NotGrantedYet:
        if (notGrantedYet == null) break;
        return notGrantedYet(this as NotGrantedYet);
      case _OnboardingState.Denied:
        if (denied == null) break;
        return denied(this as Denied);
      case _OnboardingState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Initial) initial,
      FutureOr<void> Function(Granted) granted,
      FutureOr<void> Function(NotGrantedYet) notGrantedYet,
      FutureOr<void> Function(Denied) denied,
      FutureOr<void> Function(ShowLocationPermissionRationale)
          showLocationPermissionRationale}) {
    assert(() {
      if (initial == null &&
          granted == null &&
          notGrantedYet == null &&
          denied == null &&
          showLocationPermissionRationale == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _OnboardingState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _OnboardingState.Granted:
        if (granted == null) break;
        return granted(this as Granted);
      case _OnboardingState.NotGrantedYet:
        if (notGrantedYet == null) break;
        return notGrantedYet(this as NotGrantedYet);
      case _OnboardingState.Denied:
        if (denied == null) break;
        return denied(this as Denied);
      case _OnboardingState.ShowLocationPermissionRationale:
        if (showLocationPermissionRationale == null) break;
        return showLocationPermissionRationale(
            this as ShowLocationPermissionRationale);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Initial extends OnboardingState {
  const Initial._() : super(_OnboardingState.Initial);

  factory Initial() {
    _instance ??= const Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Granted extends OnboardingState {
  const Granted._() : super(_OnboardingState.Granted);

  factory Granted() {
    _instance ??= const Granted._();
    return _instance;
  }

  static Granted _instance;
}

@immutable
class NotGrantedYet extends OnboardingState {
  const NotGrantedYet._() : super(_OnboardingState.NotGrantedYet);

  factory NotGrantedYet() {
    _instance ??= const NotGrantedYet._();
    return _instance;
  }

  static NotGrantedYet _instance;
}

@immutable
class Denied extends OnboardingState {
  const Denied._() : super(_OnboardingState.Denied);

  factory Denied() {
    _instance ??= const Denied._();
    return _instance;
  }

  static Denied _instance;
}

@immutable
class ShowLocationPermissionRationale extends OnboardingState {
  const ShowLocationPermissionRationale._()
      : super(_OnboardingState.ShowLocationPermissionRationale);

  factory ShowLocationPermissionRationale() {
    _instance ??= const ShowLocationPermissionRationale._();
    return _instance;
  }

  static ShowLocationPermissionRationale _instance;
}
