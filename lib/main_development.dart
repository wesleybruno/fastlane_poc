import 'package:flutter/material.dart';
import 'package:test_fastlane/app/app.dart';
import 'app/config/environment.dart';

void main() {
  Environment.prod('URL_DEV');
  runApp(const App());
}