import 'package:flutter/material.dart';

class style_info_button extends StatefulWidget {
  const style_info_button({Key? key}) : super(key: key);

  @override
  State<style_info_button> createState() => _style_info_buttonState();
}

class _style_info_buttonState extends State<style_info_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: Container(
        child: Center(child: Text("추천페이지")),
      ),
    );
  }
}
