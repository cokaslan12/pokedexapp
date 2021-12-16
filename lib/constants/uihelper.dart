import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper{//Kullanıcı arayüzü ile ilgili responsive tasarımlar.
  UiHelper._();

  static double getApptitlewidgetHeight(){
    return ScreenUtil().orientation==Orientation.portrait? 0.15.sh:0.15.sw;
  }
  static EdgeInsets getdefaultpadding(){
    return ScreenUtil().orientation==Orientation.portrait? EdgeInsets.all(12.h): EdgeInsets.all(8.w);
  }
  static double calculatorPokeimgball(){
    return ScreenUtil().orientation==Orientation.portrait?0.2.sw:0.2.sh;
  }

   static final Map<String, Color> _typeColorMap = {//Yapılan işlemler neler yaptık yapılan işlemler 
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300.withOpacity(0.3);
    } else {
      return Colors.pink.shade300.withOpacity(0.3);
    }
  }
}