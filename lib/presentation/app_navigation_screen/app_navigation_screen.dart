import 'controller/app_navigation_controller.dart';
import 'package:demohotelbooking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          onboardingText: "Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Let\\'s You In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letSYouInScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Sign Up (Blank)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBlankScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Sign In ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Fill Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fillProfileScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Forgot Password - Type OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Forgot Password - Filled Type".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFilledTypeScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Recently Booked".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyBookedScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "My Bookmarks".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myBookmarksScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Hotel Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelDetailsScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.galleryScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Select date & Guest".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectDateGuestScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Booking Name - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingNameTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Choose Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.choosePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Card Added".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardAddedScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Confirm Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmPaymentScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "View Ticket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewTicketScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Refund Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.refundMethodScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          onboardingText: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String onboardingText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  onboardingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
