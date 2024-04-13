import 'package:flutter/material.dart';
import '../presentation/course_details_screen/course_details_screen.dart';

class AppRoutes {
  static const String courseDetailsScreen = '/course_details_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    courseDetailsScreen: (context) => const CourseDetailsScreen(),
    initialRoute: (context) => const CourseDetailsScreen()
  };
}
