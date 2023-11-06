import '../../../core/app_export.dart';import 'forgotpasswordlist_item_model.dart';/// This class defines the variables used in the [forgot_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ForgotPasswordModel {Rx<List<ForgotpasswordlistItemModel>> forgotpasswordlistItemList = Rx([ForgotpasswordlistItemModel(viaSMS:ImageConstant.imgVolume.obs,viaSMS1: "via SMS:".obs,oneHundredElevenThousandOneHun: "+1 111 ******99".obs),ForgotpasswordlistItemModel(viaSMS:ImageConstant.imgCheckmarkPrimary.obs,viaSMS1: "via Email:".obs,oneHundredElevenThousandOneHun: "user@domain.com".obs)]);

 }
