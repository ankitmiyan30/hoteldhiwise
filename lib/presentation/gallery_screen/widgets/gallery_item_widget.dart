import '../controller/gallery_controller.dart';
import '../models/gallery_item_model.dart';
import 'package:demohotelbooking/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  var controller = Get.find<GalleryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: galleryItemModelObj.rectangle!.value,
        height: 140.v,
        width: 182.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}
