import 'package:bloc/bloc.dart';
import 'package:event/features/forget_password/data/repo/forget_password_repo.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/networking/dio_factory.dart';
import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepo _repo;
  ForgetPasswordCubit(this._repo) : super(const ForgetPasswordState.initial());
  TextEditingController phone = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String imagePath = '';
  String country = '🇪🇬';
  String codeCountry = '+972';
  int maxLength = 9;
  String image = '';
  bool isAvailable = false;
  String date = '';
  String gender = '';
  bool passwordShow = true;
  bool isComplete = false;
  bool withPassword = false;
  // MARK: - Login method
  Map<String, dynamic> deviceData = {};

  void emitForgetPasswordStates() async {
    emit(const ForgetPasswordState.loading());
  }

  void emitsendVerificationCodeStates({required String phoneNumber}) async {
    // emit(const ForgetPasswordState.sendVerificationCodeloading());
    // final response = await _loginRepo.sendVerificationCode(
    //     otpRequestBody: SendVerificationCode(phoneNumber: phoneNumber));
    // response.when(success: (loginResponse) async {
    //   emit(ForgetPasswordState.sendVerificationCodesuccess(loginResponse));
    // }, failure: (error) {
    //   emit(ForgetPasswordState.sendVerificationCodeerror(
    //       error: error.apiErrorModel.message ?? ''));
    // });
  }

  Future<void> saveUserToken({
    required String token,
  }) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);

    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  // MARK: -change CountryCode
  changeCountryCode(
      {required String newCountry,
      required String newCode,
      required int newMaxLength}) {
    emit(const ForgetPasswordState.changeCountryLoading());
    country = newCountry;
    codeCountry = newCode;
    maxLength = newMaxLength;
    emit(const ForgetPasswordState.changeCountrySuccess());
  }

  // MARK: -change Button Status
  changeButtonStatus() {
    emit(const ForgetPasswordState.changeAvailableButtonLoading());
    if (phone.text.length == maxLength) {
      isAvailable = true;
    } else {
      isAvailable = false;
    }
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const ForgetPasswordState.changeAvailableButtonSuccess());
  }

  changeVerifyButtonStatus(int leangth) {
    emit(const ForgetPasswordState.changeAvailableButtonLoading());
    if (leangth == 4) {
      isAvailable = true;
    } else {
      isAvailable = false;
    }
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const ForgetPasswordState.changeAvailableButtonSuccess());
  }

  // MARK: -changePasswrodShow
  changePasswrodShow() {
    emit(const ForgetPasswordState.changeAvailableButtonLoading());
    passwordShow = passwordShow == true ? false : true;
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const ForgetPasswordState.changeAvailableButtonSuccess());
  }

  // MARK: -changetoPassword
  changetoPasswordMethod() {
    emit(const ForgetPasswordState.changeAvailableButtonLoading());
    withPassword = withPassword == true ? false : true;
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const ForgetPasswordState.changeAvailableButtonSuccess());
  }
}
