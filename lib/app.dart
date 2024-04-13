import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskapp/controller_binder.dart';
import 'package:taskapp/routes/app_routes.dart';
import 'package:taskapp/theme/theme_helper.dart';

import 'core/utils/size_utils.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: theme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          initialBinding: ControllerBinder(),
        );
      },
    );
  }
}
