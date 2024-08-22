import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  }
  static TextStyle headlineTextFieldStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold);
  }
  static TextStyle lightTextFieldStyle() {
    return const TextStyle(
        color: Colors.black38, fontSize: 16.0, fontWeight: FontWeight.w500);
  }
  static TextStyle semiBoldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black38, fontSize: 18.0, fontWeight: FontWeight.w500);
  }
}
