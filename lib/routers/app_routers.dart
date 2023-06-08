import 'package:flutter_study_app/screens/home/home_screen.dart';
import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:get/get.dart';
import '../controllers/question_folder/quiz_paper_controller.dart';
import '../screens/splash/splash_screen.dart';

class AppRouters {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(
            name: "/introduction", page: () => const AppIntroductionScreen()),
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuizPaperController());
            })),
      ];
}
