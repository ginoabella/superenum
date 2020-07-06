import 'package:super_enum/super_enum.dart';

part 'weather_event.g.dart';

@superEnum
enum _WeatherEvent {
  @Data(fields: [
    DataField<String>('cityName'),
  ])
  GetWeather,
  // Other events go here...
}
