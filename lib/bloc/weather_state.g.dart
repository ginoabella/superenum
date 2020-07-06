// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState(this._type);

  factory WeatherState.initial() = Initial;

  factory WeatherState.loading() = Loading;

  factory WeatherState.loaded({@required Weather weather}) = Loaded;

  factory WeatherState.error({@required String message}) = Error;

  final _WeatherState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Loading) loading,
      @required R Function(Loaded) loaded,
      @required R Function(Error) error}) {
    assert(() {
      if (initial == null ||
          loading == null ||
          loaded == null ||
          error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherState.Initial:
        return initial(this as Initial);
      case _WeatherState.Loading:
        return loading(this as Loading);
      case _WeatherState.Loaded:
        return loaded(this as Loaded);
      case _WeatherState.Error:
        return error(this as Error);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Initial) initial,
      @required FutureOr<R> Function(Loading) loading,
      @required FutureOr<R> Function(Loaded) loaded,
      @required FutureOr<R> Function(Error) error}) {
    assert(() {
      if (initial == null ||
          loading == null ||
          loaded == null ||
          error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherState.Initial:
        return initial(this as Initial);
      case _WeatherState.Loading:
        return loading(this as Loading);
      case _WeatherState.Loaded:
        return loaded(this as Loaded);
      case _WeatherState.Error:
        return error(this as Error);
    }
  }

  R whenOrElse<R>(
      {R Function(Initial) initial,
      R Function(Loading) loading,
      R Function(Loaded) loaded,
      R Function(Error) error,
      @required R Function(WeatherState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _WeatherState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _WeatherState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _WeatherState.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Initial) initial,
      FutureOr<R> Function(Loading) loading,
      FutureOr<R> Function(Loaded) loaded,
      FutureOr<R> Function(Error) error,
      @required FutureOr<R> Function(WeatherState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _WeatherState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _WeatherState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _WeatherState.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Initial) initial,
      FutureOr<void> Function(Loading) loading,
      FutureOr<void> Function(Loaded) loaded,
      FutureOr<void> Function(Error) error}) {
    assert(() {
      if (initial == null &&
          loading == null &&
          loaded == null &&
          error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _WeatherState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _WeatherState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _WeatherState.Error:
        if (error == null) break;
        return error(this as Error);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Initial extends WeatherState {
  const Initial._() : super(_WeatherState.Initial);

  factory Initial() {
    _instance ??= const Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Loading extends WeatherState {
  const Loading._() : super(_WeatherState.Loading);

  factory Loading() {
    _instance ??= const Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Loaded extends WeatherState {
  const Loaded({@required this.weather}) : super(_WeatherState.Loaded);

  final Weather weather;

  @override
  String toString() => 'Loaded(weather:${this.weather})';
  @override
  List get props => [weather];
}

@immutable
class Error extends WeatherState {
  const Error({@required this.message}) : super(_WeatherState.Error);

  final String message;

  @override
  String toString() => 'Error(message:${this.message})';
  @override
  List get props => [message];
}
