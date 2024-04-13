import 'package:get/get.dart';
import 'package:taskapp/presentation/state_holders/details_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(CourseDetailsController());
  }
}