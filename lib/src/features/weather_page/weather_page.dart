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
              title: c_t(),//Text("기온별 정보 전체보기"),
              content: SingleChildScrollView(

                child: ListBody(
                  children: [

                    ListTile(title: Text('28°C 이상'),onTap: (){

                      showDialog
                        (context: context,
                          builder: (BuildContext){
                            return AlertDialog( title: Text('28'),content: SingleChildScrollView(child: ListBody(children: [Text('28')],),),  ); });
                      /*AlertDialog(title: Text('28'),
                          content: SingleChildScrollView(child: ListBody(children: [Text('28')],)) );*/ }
                    ),

                    ListTile(title: Text('28°C 이상'),onTap: (){print('민소매, 반팔, 반바지, 짧은치마, 린넨 옷');}),
                    ListTile(title: Text('27°C ~ 23°C'),onTap: (){print('반팔, 얇은 셔츠, 반바지, 면바지');}),
                    ListTile(title: Text('22°C ~ 20°C'),onTap: (){print('블라우스, 긴팔티, 면바지, 슬랙스');}),
                    ListTile(title: Text('19°C ~ 17°C'),onTap: (){print('얇은 가디건, 얇은 니트, 맨투맨, 후드, 긴바지');}),
                    ListTile(title: Text('16°C ~ 12°C'),onTap: (){print('자켓, 가디건, 청자켓, 니트, 스타킹, 청바지');}),
                    ListTile(title: Text('11°C ~ 9°C'),onTap: (){print('트렌치코트, 야상, 점퍼, 스타킹, 기모바지');}),
                    ListTile(title: Text('8°C ~ 5°C'),onTap: (){print('울코트, 히트텍, 가죽 옷, 기모');}),
                    ListTile(title: Text('4°C 이하'),onTap: (){print('패딩, 두꺼운 코트, 누빔옷, 기모, 목도리');})
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
              CitySearchBox(), // 날씨검색바
              Spacer(),
              CurrentWeather(), // 현재 날씨 정보 -> current_wether.dart 참고

              Spacer(),
              ElevatedButton(
                  onPressed: _show_weather,
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => style_info_button(txt: "test",)),);},
                  child: Text('기온별 정보')), // 1. 정보를 얻을 수 있는 버튼
              Spacer(),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push
                      (context, MaterialPageRoute(builder: (context) => style_info_button(txt: 'a')),);},
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