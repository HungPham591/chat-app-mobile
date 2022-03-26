import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/category/model/category.dart';
import 'package:mobile/screens/category/service/category.dart';

class CategoryController
    extends BaseController<CategoryModel, CategoryService> {
  CategoryController() : super(CategoryModel(), CategoryService());
  void onCategoryPaneTap() {
    moveToListProfile();
  }
}
