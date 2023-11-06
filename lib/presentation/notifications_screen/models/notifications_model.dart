import 'sectionlist_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {Rx<List<SectionlistItemModel>> sectionlistItemList = Rx([SectionlistItemModel(groupBy: "Today".obs),SectionlistItemModel(groupBy: "Today".obs),SectionlistItemModel(groupBy: "Yesterday".obs),SectionlistItemModel(groupBy: "Yesterday".obs)]);

 }
