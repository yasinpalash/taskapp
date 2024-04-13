import 'dart:convert';
import 'package:get/get.dart';
import 'package:taskapp/data/models/course_details.dart';
import 'package:taskapp/data/utility/url.dart';

import 'package:http/http.dart' as http;

class CourseDetailsController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  CourseDetails courseDetails = CourseDetails();

  Future<CourseDetails> getCourseApi() async {
    _inProgress = true;
    update();
    final response = await http.get(Uri.parse(Url.api));
    _inProgress = false;

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      courseDetails=CourseDetails.fromJson(jsonData);
      update();
      return CourseDetails.fromJson(jsonData);

    } else {
      update();
      throw Exception('Failed to load course details: ${response.statusCode}');
    }
  }
}