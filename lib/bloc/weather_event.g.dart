// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class WeatherEvent extends Equatable {
  const WeatherEvent(this._type);

  factory WeatherEvent.getWeather({@required String cityName}) = GetWeather;

  final _WeatherEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(GetWeather) getWeather}) {
    assert(() {
      if (getWeather == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        return getWeather(this as GetWeather);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(GetWeather) getWeather}) {
    assert(() {
      if (getWeather == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        return getWeather(this as GetWeather);
    }
  }

  R whenOrElse<R>(
      {R Function(GetWeather) getWeather,
      @required R Function(WeatherEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        if (getWeather == null) break;
        return getWeather(this as GetWeather);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(GetWeather) getWeather,
      @required FutureOr<R> Function(WeatherEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        if (getWeather == null) break;
        return getWeather(this as GetWeather);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial({FutureOr<void> Function(GetWeather) getWeather}) {
    assert(() {
      if (getWeather == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _WeatherEvent.GetWeather:
        if (getWeather == null) break;
        return getWeather(this as GetWeather);
    }
  }

  @override
  List get props => const [];
}

@immutable
class GetWeather extends WeatherEvent {
  const GetWeather({@required this.cityName}) : super(_WeatherEvent.GetWeather);

  final String cityName;

  @override
  String toString() => 'GetWeather(cityName:${this.cityName})';
  @override
  List get props => [cityName];
}
