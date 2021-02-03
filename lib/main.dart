import 'package:flutter/material.dart';
import './app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => App(),
    ),
  );
}
