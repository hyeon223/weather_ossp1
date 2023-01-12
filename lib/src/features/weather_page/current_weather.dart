import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_weather_example_flutter/src/entities/weather/weather_data.dart'; //날씨정보를 모아놓음
import 'package:open_weather_example_flutter/src/features/weather_page/city_search_box.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/current_weather_controller.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/weather_icon_image.dart';

class CurrentWeather extends ConsumerWidget {
  const CurrentWeather({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherDataValue = ref.watch(currentWeatherControllerProvider);
    final city = ref.watch(cityProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(city, style: Theme.of(context).textTheme.headline4),
        weatherDataValue.when(
          data: (weatherData) => CurrentWeatherContents(data: weatherData),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, __) => Text(e.toString()),
        ),
      ],
    );
  }
}

class CurrentWeatherContents extends ConsumerWidget {
  const CurrentWeatherContents({Key? key, required this.data})
      : super(key: key);
  final WeatherData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final temp = data.temp.celsius.toInt().toString();
    final minTemp = data.minTemp.celsius.toInt().toString();
    final maxTemp = data.maxTemp.celsius.toInt().toString();
    final highAndLow = 'H:$maxTemp° L:$minTemp°';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        WeatherIconImage(iconUrl: data.iconUrl, size: 120), // 날씨 아이콘 정보
        Text(temp, style: textTheme.headline2), // 온도 정보
        Text(highAndLow, style: textTheme.bodyText2), //최고,최저 기온 정보
      ],
    );
  }
}



// 온도 정보를 받아오는 클래스, (구현할 부분)
class Current_temp extends ConsumerWidget {
  const Current_temp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherDataValue = ref.watch(currentWeatherControllerProvider);
    final city = ref.watch(cityProvider);
    return
      weatherDataValue.when(
        data: (weatherData) => c_t(data: weatherData),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, __) => Text(e.toString()),
      );
  }
}

class c_t extends ConsumerWidget {
  const c_t({Key? key, required this.data}) : super(key: key);

  final WeatherData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final temp = data.temp.celsius.toInt().toString();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('온도정보를 받아옴'),
        Text(temp, style: textTheme.headline2), // 온도 정보
      ],
    );
  }
}