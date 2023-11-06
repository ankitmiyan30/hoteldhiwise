import '../recently_booked_screen/widgets/recentlybookedlist_item_widget.dart';import 'controller/recently_booked_controller.dart';import 'models/recentlybookedlist_item_model.dart';import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_leading_image.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_title.dart';import 'package:demohotelbooking/widgets/app_bar/appbar_trailing_image.dart';import 'package:demohotelbooking/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class RecentlyBookedScreen extends GetWidget<RecentlyBookedController> {const RecentlyBookedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 18.v, right: 24.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.recentlyBookedModelObj.value.recentlybookedlistItemList.value.length, itemBuilder: (context, index) {RecentlybookedlistItemModel model = controller.recentlyBookedModelObj.value.recentlybookedlistItemList.value[index]; return RecentlybookedlistItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_recently_booked".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgMenuPrimary, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgVideoCamera, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
