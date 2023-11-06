import 'controller/onboarding_one_controller.dart';import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class OnboardingOneScreen extends GetWidget<OnboardingOneController> {const OnboardingOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle1420x428, height: 420.v, width: 428.h), SizedBox(height: 37.v), _buildInfoSection(), SizedBox(height: 98.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blueGray900, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 32.v), _buildSkipSection(), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildInfoSection() { return Container(padding: EdgeInsets.symmetric(horizontal: 43.h), child: Column(children: [Container(width: 307.h, margin: EdgeInsets.only(left: 16.h, right: 17.h), child: Text("msg_travel_safely_comfortably".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineLarge!.copyWith(height: 1.50))), SizedBox(height: 6.v), SizedBox(width: 341.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge18.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildSkipSection() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(width: 180.h, text: "lbl_skip".tr, buttonStyle: CustomButtonStyles.fillBlueGray, onPressed: () {onTapSkip();}), CustomElevatedButton(width: 180.h, text: "lbl_next".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapNext();})])); } 
/// Navigates to the letSYouInScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.letSYouInScreen, ); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.onboardingTwoScreen, ); } 
 }
