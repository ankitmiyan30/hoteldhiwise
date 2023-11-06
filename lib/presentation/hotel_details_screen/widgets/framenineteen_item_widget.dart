import '../controller/hotel_details_controller.dart';
import '../models/framenineteen_item_model.dart';
import 'package:demohotelbooking/core/app_export.dart';
import 'package:demohotelbooking/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramenineteenItemWidget extends StatelessWidget {
  FramenineteenItemWidget(
    this.framenineteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramenineteenItemModel framenineteenItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: framenineteenItemModelObj.jennyWilson!.value,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 7.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        framenineteenItemModelObj.jennyWilson1!.value,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        framenineteenItemModelObj.dec!.value,
                        style: CustomTextStyles.labelLargeGray40001,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 32.v,
                width: 60.h,
                text: "lbl_5".tr,
                margin: EdgeInsets.symmetric(vertical: 8.v),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgStar,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 47.h),
            child: Obx(
              () => Text(
                framenineteenItemModelObj.veryniceandcomfortab!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
