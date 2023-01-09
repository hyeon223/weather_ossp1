import 'dart:html';

import 'package:flutter/material.dart';

class style_info_button extends StatefulWidget {
  var txt = "";
  style_info_button({Key? key, required this.txt}) : super(key: key);

  @override
  State<style_info_button> createState() => _style_info_buttonState();
}

class _style_info_buttonState extends State<style_info_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기온에 맞는 옷 추천'),
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: Container(
        child: Center(
          child: Text(widget.txt)),
      )
    );
  }
}
