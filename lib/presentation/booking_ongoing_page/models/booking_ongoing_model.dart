import '../../../core/app_export.dart';import 'bookingongoing_item_model.dart';/// This class defines the variables used in the [booking_ongoing_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingOngoingModel {Rx<List<BookingongoingItemModel>> bookingongoingItemList = Rx([BookingongoingItemModel(image:ImageConstant.imgRectangle4100x100.obs,royalePresident: "Royale President Hotel".obs,parisFrance: "Paris, France".obs),BookingongoingItemModel(image:ImageConstant.imgRectangle.obs,royalePresident: "Monte-Carlo Hotel".obs,parisFrance: "Rome, Italia".obs)]);

 }
