import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/services/firebase_storage_service.dart';
import 'package:get/get.dart';

import '../../firebase_ref/references.dart';
import '../../models/question_paper_model.dart';

class QuizPaperController extends GetxController {
  final allPapersImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["biology", "chemistry", "maths", "physics"];
    try {
      //retorna todos os documentos dentro desta colecao
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      //convertermos para uma lista para poder iterar sobre ele
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      allPapers.assignAll(paperList);

      for (var paper in paperList) {
        final imgUrl =
            await Get.find<FirebaseStorageService>().getImage(paper.title);
        paper.imageUrl = imgUrl;
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      debugPrint("$e");
    }
  }
}
