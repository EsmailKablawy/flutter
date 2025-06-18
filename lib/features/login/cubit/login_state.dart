import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/verify_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  //login
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error({required String error}) = Error;
  //sendVerificationCode
  const factory LoginState.sendVerificationCodeloading() =
      SendVerificationCodeLoading;
  const factory LoginState.sendVerificationCodesuccess(T data) =
      SendVerificationCodeSuccess<T>;
  const factory LoginState.sendVerificationCodeerror({required String error}) =
      SendVerificationCodeError;
  //verificationCode
  const factory LoginState.verificationCodeloading() = VerificationCodeLoading;
  const factory LoginState.verificationCodesuccess(
    VerifyResponse verifyResponse,
  ) = VerificationCodeSuccess;
  const factory LoginState.verificationCodeerror({required String error}) =
      VerificationCodeError;
  //

  //profile Complete
  const factory LoginState.profileCompleteloading() = ProfileCompleteLoading;
  const factory LoginState.profileCompletesuccess(T data) =
      ProfileCompleteSuccess<T>;
  const factory LoginState.profileCompleteerror({required String error}) =
      ProfileCompleteError;
  const factory LoginState.changeCountryLoading() = ChangeCountryLoading;

  const factory LoginState.changeCountrySuccess() = ChangeCountrySuccess;
  const factory LoginState.changeAvailableButtonLoading() =
      ChangeAvailableButtonLoading;

  const factory LoginState.changeAvailableButtonSuccess() =
      ChangeAvailableButtonSuccess;
}
