import '../../../core/app_export.dart';/// This class is used in the [bookingongoing_item_widget] screen.
class BookingongoingItemModel {BookingongoingItemModel({this.image, this.royalePresident, this.parisFrance, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle4100x100);royalePresident = royalePresident  ?? Rx("Royale President Hotel");parisFrance = parisFrance  ?? Rx("Paris, France");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? royalePresident;

Rx<String>? parisFrance;

Rx<String>? id;

 }
