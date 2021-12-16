

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/uihelper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getApptitlewidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.getdefaultpadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Sabitler.title,
              style: Sabitler.gettitlestyle(),
              ),
            ),
          ),
          Align( 
            alignment: Alignment.topRight,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset("assets/images/pokeball.png",
              width: ScreenUtil().orientation==Orientation.portrait?0.2.sh : 0.2.sw,
              fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}