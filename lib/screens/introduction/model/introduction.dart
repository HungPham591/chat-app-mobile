import 'package:mobile/screens/base/model/base_model.dart';

class IntroductionModel extends BaseModel {
  int pageIndex = 0;
  List<Map<String, String>> page = [
    {"text": "page1", "image": "page1"},
    {"text": "page2", "image": "page2"},
    {"text": "page3", "image": "page3"}
  ];
}
