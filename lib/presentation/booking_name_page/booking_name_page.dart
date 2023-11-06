import 'controller/booking_name_controller.dart';import 'models/booking_name_model.dart';import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/core/utils/validation_functions.dart';import 'package:demohotelbooking/widgets/custom_elevated_button.dart';import 'package:demohotelbooking/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class BookingNamePage extends StatelessWidget {BookingNamePage({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

BookingNameController controller = Get.put(BookingNameController(BookingNameModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 30.v), Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildEditText1(), SizedBox(height: 24.v), _buildEditText2(), SizedBox(height: 24.v), _buildEditText3(), SizedBox(height: 24.v), _buildEditText4(), SizedBox(height: 24.v), _buildEditText5(), Spacer(), _buildContinueButton()])))]))))); } 
/// Section Widget
Widget _buildEditText1() { return CustomTextFormField(controller: controller.editText1Controller, hintText: "lbl_daniel_austin".tr); } 
/// Section Widget
Widget _buildEditText2() { return CustomTextFormField(controller: controller.editText2Controller, hintText: "lbl_daniel".tr); } 
/// Section Widget
Widget _buildEditText3() { return CustomTextFormField(controller: controller.editText3Controller, hintText: "lbl_12_27_1995".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 16.v, width: 15.h)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEditText4() { return CustomTextFormField(controller: controller.editText4Controller, hintText: "lbl_user_domain_com".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgClockPrimary15x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEditText5() { return CustomTextFormField(controller: controller.editText5Controller, hintText: "msg_1_123_456_789_000".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 19.v, 12.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 18.v, width: 48.h)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinueButton();}); } 
/// Navigates to the choosePaymentMethodScreen when the action is triggered.
onTapContinueButton() { Get.toNamed(AppRoutes.choosePaymentMethodScreen, ); } 
 }
