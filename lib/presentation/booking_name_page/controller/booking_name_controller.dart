import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/presentation/booking_name_page/models/booking_name_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingNamePage.
///
/// This class manages the state of the BookingNamePage, including the
/// current bookingNameModelObj
class BookingNameController extends GetxController {BookingNameController(this.bookingNameModelObj);

TextEditingController editText1Controller = TextEditingController();

TextEditingController editText2Controller = TextEditingController();

TextEditingController editText3Controller = TextEditingController();

TextEditingController editText4Controller = TextEditingController();

TextEditingController editText5Controller = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj;

@override void onClose() { super.onClose(); editText1Controller.dispose(); editText2Controller.dispose(); editText3Controller.dispose(); editText4Controller.dispose(); editText5Controller.dispose(); } 
 }
