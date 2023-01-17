import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/current_weather.dart';

class style_info_button extends StatefulWidget {
  style_info_button({Key? key}) : super(key: key);

  @override
  State<style_info_button> createState() => _style_info_buttonState();
}

class _style_info_buttonState extends State<style_info_button> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('기온별 상세 추천 정보'),
          backgroundColor: Color(0xFF87CEEB),
          centerTitle: true,
          leading: IconButton(onPressed: (){Navigator.of(context).pop();},
              icon: Icon(Icons.arrow_back)
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  CurrentWeather(),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),

                  Text('28°C 이상',style: TextStyle(fontSize: 35, color:Colors.white)), //민소매, 반팔, 반바지, 원피스
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/민소매.jpg',height: 150, width: 150),Text('민소매'),],),
                      Column(children: [Image.asset('assets/반팔.jpg',height: 150, width: 150),Text('반팔'),],),
                      Column(children: [Image.asset('assets/반바지.jpg',height: 150, width: 150),Text('반바지'),],),
                      Column(children: [Image.asset('assets/원피스.jpg',height: 150, width: 150),Text('원피스'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),


                  Text('27°C ~ 23°C' ,style: TextStyle(fontSize: 35, color:Colors.white)),//반팔, 얇은 셔츠, 반바지, 면바지
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/반팔.jpg',height: 150, width: 150),Text('반팔'),],),
                      Column(children: [Image.asset('assets/얇은셔츠.jpg',height: 150, width: 150),Text('얇은 셔츠'),],),
                      Column(children: [Image.asset('assets/반바지.jpg',height: 150, width: 150),Text('반바지'),],),
                      Column(children: [Image.asset('assets/면바지.jpg',height: 150, width: 150),Text('면바지'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),

                  Text('22°C ~ 20°C' ,style: TextStyle(fontSize: 35, color:Colors.white)),//블라우스, 긴팔티, 면바지, 슬랙스
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/블라우스.jpg',height: 150, width: 150),Text('블라우스'),],),
                      Column(children: [Image.asset('assets/긴팔티.jpg',height: 150, width: 150),Text('긴팔티'),],),
                      Column(children: [Image.asset('assets/면바지.jpg',height: 150, width: 150),Text('면바지'),],),
                      Column(children: [Image.asset('assets/슬랙스.jpg',height: 150, width: 150),Text('슬랙스'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),


                  Text('19°C ~ 17°C',style: TextStyle(fontSize: 35, color:Colors.white)),//얇은 가디건, 얇은 니트, 맨투맨, 후드, 긴바지
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/얇은가디건.jpg',height: 150, width: 150),Text('얇은 가디건'),],),
                      Column(children: [Image.asset('assets/얇은니트.jpg',height: 150, width: 150),Text('얇은 니트'),],),
                      Column(children: [Image.asset('assets/맨투맨.jpg',height: 150, width: 150),Text('맨투맨'),],),
                      Column(children: [Image.asset('assets/후드티.jpg',height: 150, width: 150),Text('후드티'),],),
                      Column(children: [Image.asset('assets/슬랙스.jpg',height: 150, width: 150),Text('긴바지'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),

                  Text('16°C ~ 12°C',style: TextStyle(fontSize: 35, color:Colors.white)),//자켓, 가디건, 청자켓, 니트, 청바지
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/자켓.jpg',height: 150, width: 150),Text('자켓'),],),
                      Column(children: [Image.asset('assets/가디건.jpg',height: 150, width: 150),Text('가디건'),],),
                      Column(children: [Image.asset('assets/청자켓.jpg',height: 150, width: 150),Text('청자켓'),],),
                      Column(children: [Image.asset('assets/니트.jpg',height: 150, width: 150),Text('니트'),],),
                      Column(children: [Image.asset('assets/청바지.jpg',height: 150, width: 150),Text('청바지'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),


                  Text('11°C ~ 9°C',style: TextStyle(fontSize: 35, color:Colors.white)),//트렌치코트, 가죽 자켓, 점퍼, 기모바지
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/트렌치코트.jpg',height: 150, width: 150),Text('트렌치코트'),],),
                      Column(children: [Image.asset('assets/가죽자켓.jpg',height: 150, width: 150),Text('가죽 자켓'),],),
                      Column(children: [Image.asset('assets/점퍼.jpg',height: 150, width: 150),Text('점퍼'),],),
                      Column(children: [Image.asset('assets/기모바지.jpg',height: 150, width: 150),Text('기모바지'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),


                  Text('8°C ~ 5°C',style: TextStyle(fontSize: 35, color:Colors.white)),//울코트, 히트텍, 니트, 레깅스
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/울코트.jpg',height: 150, width: 150),Text('울코트'),],),
                      Column(children: [Image.asset('assets/히트텍.jpg',height: 150, width: 150),Text('히트텍'),],),
                      Column(children: [Image.asset('assets/니트.jpg',height: 150, width: 150),Text('니트'),],),
                      Column(children: [Image.asset('assets/레깅스.jpg',height: 150, width: 150),Text('레깅스'),],),
                  ],),
                  Divider(thickness: 1, color: Colors.lightBlueAccent,),


                  Text('4°C 이하',style: TextStyle(fontSize: 35, color:Colors.white)),//패딩, 두꺼운 코트, 누빔옷, 목도리
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [Image.asset('assets/패딩.jpg',height: 150, width: 150),Text('패딩'),],),
                      Column(children: [Image.asset('assets/두꺼운코트.jpg',height: 150, width: 150),Text('두꺼운 코트'),],),
                      Column(children: [Image.asset('assets/누빔옷.jpg',height: 150, width: 150),Text('누빔옷'),],),
                      Column(children: [Image.asset('assets/목도리.jpg',height: 150, width: 150),Text('목도리'),],),
                  ],),

                  //Image.asset('assets/반팔.jpg'),//이미지 추가중

                ],),
            )
          ],)
    );
  }
}