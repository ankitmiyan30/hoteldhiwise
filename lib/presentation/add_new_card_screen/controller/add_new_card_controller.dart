import 'package:demohotelbooking/core/app_export.dart';import 'package:demohotelbooking/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController numberEditTextController = TextEditingController();

TextEditingController expiryDateEditTextController = TextEditingController();

TextEditingController cvvEditTextController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); numberEditTextController.dispose(); expiryDateEditTextController.dispose(); cvvEditTextController.dispose(); } 
 }
