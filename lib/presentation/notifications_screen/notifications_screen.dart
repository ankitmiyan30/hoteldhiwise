import '../notifications_screen/widgets/sectionlist_item_widget.dart';import 'controller/notifications_controller.dart';import 'models/sectionlist_item_model.dart';import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_leading_image.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_title.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_trailing_image.dart';import 'package:demohotelbooking/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';class NotificationsScreen extends GetWidget<NotificationsController> {const NotificationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.fromLTRB(24.h, 31.v, 24.h, 5.v), child: Obx(() => GroupedListView<SectionlistItemModel, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: controller.notificationsModelObj.value.sectionlistItemList.value, groupBy: (element) => element.groupBy!.value, sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 25.v, bottom: 22.v), child: Text(value, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.whiteA700)));}, itemBuilder: (context, model) {return SectionlistItemWidget(model);}, separator: SizedBox(height: 24.v)))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgClock, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 13.v))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
