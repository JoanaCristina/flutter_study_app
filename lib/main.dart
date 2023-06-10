import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/bindings/initial_bindings.dart';
import 'package:flutter_study_app/configs/themes/app_light_theme.dart';
import 'package:flutter_study_app/controllers/theme_controller.dart';
import 'package:flutter_study_app/data_uploader_screen.dart';
import 'package:flutter_study_app/firebase_options.dart';
import 'package:flutter_study_app/routers/app_routers.dart';
import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:flutter_study_app/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'configs/themes/app_dark_thme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  // await FirebaseAuth.instance.signInAnonymously();
  InitialBindins().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:Get.find<ThemeController>().lightTheme,
      getPages: AppRouters.routes(),
    );
  }
}





/*Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
  home: DataUploaderScreen(),
  ));
}*/
