import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme(){
  return  ThemeData(
          fontFamily: 'Muli',
          appBarTheme: appBarTheme(),
          primaryColor: kPrimaryColor,
          textTheme: textThemeAppBar(),
          inputDecorationTheme: inputDecorationTheme(),
          scaffoldBackgroundColor: Colors.white);
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide:const BorderSide(
                    color : kTextColor,
                ),
                gapPadding: 10,
              );
  return InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:const EdgeInsets.symmetric(horizontal:45,vertical:20),
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              border : outlineInputBorder,
        );
}

TextTheme textThemeAppBar() {
  return const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor),
        );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
         color : Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color : Colors.black),
          titleTextStyle: TextStyle(
            
            color : Color(0xFF8B8B8B),
            fontSize:18,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness : Brightness.light,
          ),
        );
}