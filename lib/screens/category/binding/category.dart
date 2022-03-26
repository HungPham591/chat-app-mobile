import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/category/controller/category.dart';

class CategoryBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(() => CategoryController());
  }
}
