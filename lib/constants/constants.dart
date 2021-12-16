
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sabitler{
  Sabitler._();
  static const String title="Pokedex";
  static TextStyle gettitlestyle(){
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: _calculatorFontSize(48),
    );

  }
  static TextStyle getpokemonnamestyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculatorFontSize(24),
    );

  }

  static TextStyle gettypechipstyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: _calculatorFontSize(20),
    );

  }
  static _calculatorFontSize(int size){
    if(ScreenUtil().orientation==Orientation.portrait){
      return size.sp;
    }
    else{
      return (size*1.5).sp;
    }
  }
  static getpokeinfotextstyle(){
    return TextStyle(
      fontSize: _calculatorFontSize(16),
      color: Colors.black,
    );
  }
  static getpokeinfolabelstyle(){
    return TextStyle(
      fontSize: _calculatorFontSize(20),
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }
}