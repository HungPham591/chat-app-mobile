import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/service/model/service.dart';
import 'package:mobile/screens/service/service/service.dart';

class ServiceController extends BaseController<ServiceModel, ServiceService> {
  ServiceController() : super(ServiceModel(), ServiceService());
}
