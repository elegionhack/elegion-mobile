import 'package:flutter/material.dart';

const _accentColor = Color(0xFF00AEEF);

ThemeData get lightTheme => ThemeData(
      primaryColor: _accentColor,
      appBarTheme: const AppBarTheme(
        color: Color(0xFFFFFFFF),
        shadowColor: Color(0xFFEDEDED),
        elevation: 1,
        iconTheme: IconThemeData(color: _accentColor),
        actionsIconTheme: IconThemeData(color: _accentColor),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
