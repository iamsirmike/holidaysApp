import 'package:flutter/material.dart';

InputDecoration buildInputDecoration() {
    return InputDecoration(
      suffixIcon: Icon(
        Icons.search,
        color: Colors.grey,
      ),
      hintText: 'Search',
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 1,
          color: Color(0xffEEEFF0),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 1,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
