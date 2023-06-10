import 'package:flutter/material.dart';
import 'package:flutter_study_app/models/question_paper_model.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../controllers/question_folder/quiz_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuizPaperController _questionPaperController = Get.find();

    return Scaffold(
        body: Obx(
          () => ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  child: SizedBox(
                      height: 200,
                      width: 200,
                      child: CachedNetworkImage(
                        imageUrl: _questionPaperController.allPapers[index].imageUrl!,
                        placeholder: (context,url)=>Container(
                         alignment: Alignment.center, 
                         child: const CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error)=>Image.asset("assets/images/app_splash_logo.png")
                      ))
                      );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: _questionPaperController.allPapers.length)));
  }
}
