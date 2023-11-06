import '../../../core/app_export.dart';import 'searchtype_item_model.dart';/// This class defines the variables used in the [search_type_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTypeModel {Rx<List<SearchtypeItemModel>> searchtypeItemList = Rx([SearchtypeItemModel(amsterdamNetherlands: "Amsterdam, Netherlands".obs),SearchtypeItemModel(amsterdamNetherlands: "Palazzo Hotel".obs),SearchtypeItemModel(amsterdamNetherlands: "Bulgari Hotel".obs),SearchtypeItemModel(amsterdamNetherlands: "Martinez Cannes Hotel".obs),SearchtypeItemModel(amsterdamNetherlands: "London, United Kingdom".obs),SearchtypeItemModel(amsterdamNetherlands: "Palms Casino Hotel".obs)]);

 }
