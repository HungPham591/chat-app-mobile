abstract class ICategory {
  String? id;
  String? name;
  String? description;
  int? code;
}

abstract class IUser {}

abstract class IGender {
  String? id;
  String? name;
  int? code;
}

abstract class IService {
  String? id;
  String? title;
  String? description;
  double? price;
  int? code;
}

abstract class IReportType {
  String? id;
  String? name;
  int? code;
}

abstract class IReport {}
