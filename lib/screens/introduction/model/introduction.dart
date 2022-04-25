import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/base/model/base_model.dart';

class IntroductionModel extends BaseModel {
  int nameInputLenght = 20;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? userName;
  int? birthday =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .year;
  String? imageLink;
  //
  bool gender = true;
  bool interestedInGender = true;
  int pageIndex = 0;

  File? image;
}
