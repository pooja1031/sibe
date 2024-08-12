import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExpansionPanelController extends GetxController {
  RxBool isExpanded = false.obs;

  void toggleExpansion() {
    isExpanded.toggle();
  }
}
