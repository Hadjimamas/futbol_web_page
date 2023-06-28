import 'package:flutter/material.dart';

ThemeData getAppTheme() => ThemeData(
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      useMaterial3: true,
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.white,
        leadingAndTrailingTextStyle: TextStyle(color: Colors.white),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        collapsedTextColor: Colors.white,
        textColor: Colors.white,
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      cardTheme: CardTheme(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFF596267),
        shadowColor: Colors.cyanAccent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red,
          backgroundColor: Color(0xFF001A2A),
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0x46072030),
      ),
      scaffoldBackgroundColor: const Color(0xFF001A2A),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 5,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff014975),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );

Theme calendarTheme(BuildContext context, child) => Theme(
      ///Design of datePicker
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(
          //Header background color
          primary: Color(0xff014975),
          //Header text color
          onPrimary: Colors.white,
          //Text color of the dates
          onSurface: Colors.black,
        ),
        textTheme:
            //Text color of the input date
            Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            //Button text color
            backgroundColor: const Color(0xff014975),
          ),
        ),
      ),
      child: child!,
    );
