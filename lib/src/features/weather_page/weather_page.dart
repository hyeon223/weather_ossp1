import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/constants/app_colors.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/city_search_box.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/current_weather.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/hourly_weather.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/style_info_button.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key, required this.city}) : super(key: key);
  final String city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.rainGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children:  [
              Spacer(),
              Text('지역을 검색하십시오',style: TextStyle(fontSize: 40)), // 검색할 도시
              Spacer(), // 배치
              CitySearchBox(),
              Spacer(),
              CurrentWeather(),
              Spacer(),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => style_info_button()),);},
                  child: Text('추천')), // 1. 정보를 얻을 수 있는 버튼
              Spacer(),
              HourlyWeather(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
