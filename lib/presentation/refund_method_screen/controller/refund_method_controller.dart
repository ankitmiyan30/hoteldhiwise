import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/presentation/refund_method_screen/models/refund_method_model.dart';/// A controller class for the RefundMethodScreen.
///
/// This class manages the state of the RefundMethodScreen, including the
/// current refundMethodModelObj
class RefundMethodController extends GetxController {Rx<RefundMethodModel> refundMethodModelObj = RefundMethodModel().obs;

Rx<String> radioGroup = "".obs;

 }
