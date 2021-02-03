import 'package:flutter/material.dart';
import './app.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  // GlobalConfiguration().loadFromAsset("configurations");
  runApp(
    DevicePreview(
      enabled: true,
      builder: (_) => App(),
    ),
  );
}
