import '../booking_completed_page/widgets/bookingcompleted_item_widget.dart';
import 'controller/booking_completed_controller.dart';
import 'models/booking_completed_model.dart';
import 'models/bookingcompleted_item_model.dart';
import 'package:demohotelbooking/core/app_export.dart';
import 'package:flutter/material.dart';

class BookingCompletedPage extends StatelessWidget {
  BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  BookingCompletedController controller =
      Get.put(BookingCompletedController(BookingCompletedModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildBookingCompleted(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingCompleted() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: controller.bookingCompletedModelObj.value
                .bookingcompletedItemList.value.length,
            itemBuilder: (context, index) {
              BookingcompletedItemModel model = controller
                  .bookingCompletedModelObj
                  .value
                  .bookingcompletedItemList
                  .value[index];
              return BookingcompletedItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
