import 'package:freezed_annotation/freezed_annotation.dart';

import '../../login/data/models/verify_response.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  //login
  const factory ForgetPasswordState.loading() = Loading;
  const factory ForgetPasswordState.success(data) = Success;
  const factory ForgetPasswordState.error({required String error}) = Error;
  //sendVerificationCode
  const factory ForgetPasswordState.sendVerificationCodeloading() =
      SendVerificationCodeLoading;
  const factory ForgetPasswordState.sendVerificationCodesuccess(data) =
      SendVerificationCodeSuccess;
  const factory ForgetPasswordState.sendVerificationCodeerror(
      {required String error}) = SendVerificationCodeError;
  //verificationCode
  const factory ForgetPasswordState.verificationCodeloading() =
      VerificationCodeLoading;
  const factory ForgetPasswordState.verificationCodesuccess(
    VerifyResponse verifyResponse,
  ) = VerificationCodeSuccess;
  const factory ForgetPasswordState.verificationCodeerror(
      {required String error}) = VerificationCodeError;
  //

  //profile Complete
  const factory ForgetPasswordState.profileCompleteloading() =
      ProfileCompleteLoading;
  const factory ForgetPasswordState.profileCompletesuccess(data) =
      ProfileCompleteSuccess;
  const factory ForgetPasswordState.profileCompleteerror(
      {required String error}) = ProfileCompleteError;
  const factory ForgetPasswordState.changeCountryLoading() =
      ChangeCountryLoading;

  const factory ForgetPasswordState.changeCountrySuccess() =
      ChangeCountrySuccess;
  const factory ForgetPasswordState.changeAvailableButtonLoading() =
      ChangeAvailableButtonLoading;

  const factory ForgetPasswordState.changeAvailableButtonSuccess() =
      ChangeAvailableButtonSuccess;
}
