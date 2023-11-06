import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/presentation/booking_ongoing_tab_container_page/models/booking_ongoing_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingOngoingTabContainerPage.
///
/// This class manages the state of the BookingOngoingTabContainerPage, including the
/// current bookingOngoingTabContainerModelObj
class BookingOngoingTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {BookingOngoingTabContainerController(this.bookingOngoingTabContainerModelObj);

Rx<BookingOngoingTabContainerModel> bookingOngoingTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
