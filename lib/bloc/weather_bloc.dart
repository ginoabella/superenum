import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superenum/bloc/weather_event.dart';
import 'package:superenum/bloc/weather_state.dart';
import 'package:superenum/data/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherState.initial());

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    // Instantiating states using factories
    yield WeatherState.loading();
    // Exhaustive when "statement"
    yield* event.when(
      getWeather: (e) => mapGetWeatherToState(e),
    );
  }

  Stream<WeatherState> mapGetWeatherToState(GetWeather e) async* {
    try {
      final weather = await weatherRepository.fetchWeather(e.cityName);
      yield WeatherState.loaded(weather: weather);
    } on NetworkError {
      yield WeatherState.error(
          message: "Couldn't fetch weather. Is the device online?");
    }
  }
}
