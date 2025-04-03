# Kegel Flutter App

A comprehensive Kegel exercise tracking application built with Flutter to help users maintain and improve their pelvic floor health.

## Description

The Kegel Flutter App is a user-friendly mobile application designed to help individuals track and maintain their Kegel exercise routine. The app provides a complete solution for pelvic floor health management, featuring exercise tracking, progress monitoring, reminders, and educational resources.

## Features

- **Exercise Tracking**: Record and monitor your daily Kegel exercises
- **Progress Monitoring**: Visualize your progress with charts and statistics
- **Reminder System**: Set customizable reminders for exercise sessions
- **Educational Resources**: Access comprehensive information about Kegel exercises and pelvic floor health
- **Calendar Integration**: Track your exercise history with an integrated calendar
- **Audio Guidance**: Follow along with audio instructions during exercises
- **Progress Charts**: View your improvement over time with detailed statistics
- **Local Storage**: All data is securely stored on your device

## Technologies & Dependencies

- **Framework**: Flutter
- **Language**: Dart
- **Key Dependencies**:
  - `mvc_pattern`: For clean architecture implementation
  - `carousel_slider`: For interactive UI components
  - `table_calendar`: For calendar integration
  - `fl_chart`: For progress visualization
  - `sqflite`: For local database storage
  - `audioplayers`: For exercise audio guidance
  - `shared_preferences`: For app settings storage
  - `location`: For location-based features
  - `flutter_svg`: For SVG image support
  - `percent_indicator`: For progress indicators

## Project Structure

```
kegel_flutter_app/
├── android/          # Android platform-specific code
├── ios/             # iOS platform-specific code
├── lib/             # Main application code
├── assets/          # Static assets (images, configurations, database)
│   ├── cfg/        # Configuration files
│   ├── img/        # Image assets
│   └── db/         # Database files
└── pubspec.yaml     # Project dependencies and configuration
```

## Installation

1. Ensure you have Flutter installed on your system. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

2. Clone the repository:
```bash
git clone https://github.com/bobga/kegel_flutter_app.git
```

3. Navigate to the project directory:
```bash
cd kegel_flutter_app
```

4. Install dependencies:
```bash
flutter pub get
```

5. Run the app:
```bash
flutter run
```

## Usage

1. **Initial Setup**:
   - Launch the app on your device or simulator
   - Complete the initial setup process
   - Set your exercise preferences and goals

2. **Daily Use**:
   - Follow the exercise routine as guided by the app
   - Track your progress in the dashboard
   - Set reminders for your exercise sessions
   - Review your progress through charts and statistics

3. **Features**:
   - Use the calendar to view your exercise history
   - Access educational resources for proper technique
   - Follow audio-guided exercises
   - Monitor your progress with detailed statistics

## Contributing

We welcome contributions to improve the Kegel Flutter App! Here's how you can help:

1. Fork the repository
2. Create a new branch for your feature (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Please ensure your code follows the project's coding standards and includes appropriate tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, please open an issue in the GitHub repository or contact the maintainers.

## Acknowledgments

- Thanks to all contributors who have helped improve this project
- Special thanks to the Flutter community for their excellent documentation and support
