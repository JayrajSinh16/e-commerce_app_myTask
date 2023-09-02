import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopapp04/contants.dart';

ThemeData theme(){
  return  ThemeData(

        appBarTheme: const  AppBarTheme(
          color: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: Colors.black),
          ),

        inputDecorationTheme: InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(horizontal: 42,vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const  BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),

        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor), 
        ),

        visualDensity: VisualDensity.adaptivePlatformDensity,
    );
}