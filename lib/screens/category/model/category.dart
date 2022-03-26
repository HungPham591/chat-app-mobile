import 'package:mobile/screens/base/model/base_model.dart';
import 'package:mobile/screens/category/model/category_pane.dart';
import 'package:mobile/shared/constants/resources.dart';

class CategoryModel extends BaseModel {
  List<CategoryPaneModel> listCategoryPane = [
    CategoryPaneModel(1, 'bar', Resource.barImg),
    CategoryPaneModel(2, 'sport', Resource.sportImg),
    CategoryPaneModel(3, 'game', Resource.gameImg),
    CategoryPaneModel(4, 'film', Resource.filmImg),
    CategoryPaneModel(5, 'coffee', Resource.coffeeImg),
    CategoryPaneModel(6, 'food', Resource.foodImg),
  ];
}
