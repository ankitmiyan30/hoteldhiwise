import '../../../core/app_export.dart';import 'bookingcancelledlist_item_model.dart';/// This class defines the variables used in the [booking_cancelled_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCancelledModel {Rx<List<BookingcancelledlistItemModel>> bookingcancelledlistItemList = Rx([BookingcancelledlistItemModel(palmsCasinoResort:ImageConstant.imgRectangle4100x100.obs,palmsCasinoResort1: "Palms Casino Resort".obs,londonUnitedKingdom: "London, United Kingdom".obs,youCanceledThis: "You canceled this hotel booking".obs),BookingcancelledlistItemModel(palmsCasinoResort:ImageConstant.imgRectangle.obs,palmsCasinoResort1: "The Mark Hotel".obs,londonUnitedKingdom: "Luxemburg, Germany".obs,youCanceledThis: "You canceled this hotel booking".obs)]);

 }
