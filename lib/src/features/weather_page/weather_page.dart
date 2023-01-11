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

    void _show_weather(){
      showDialog(
          context: context,
          builder: (BuildContext){
            return AlertDialog(
              title: Text("기온별 정보 전체보기"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text('정보를 제공함'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                )
              ],
            );
          });
    }


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
              CitySearchBox(),// 검색바
              Spacer(),
              CurrentWeather(), // 현재 날씨 정보 -> current_wether.dart 참고
              Spacer(),

              ElevatedButton(
                  onPressed: _show_weather,
                //Navigator.push(context, MaterialPageRoute(builder: (context) => style_info_button(txt: "test",)),);},
                child: Text('기온별 정보 전체보기')), // 1. 정보를 얻을 수 있는 버튼

              Spacer(),

              ElevatedButton(
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => style_info_button(txt: "데이터 받아와서 처리",)),);},
                  child: Text('추천 정보')), // 2. 추천 정보 페이지 넘기기

              Spacer(),
              HourlyWeather(), // 5일간 기상예보
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
