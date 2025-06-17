import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/networking/dio_factory.dart';

import '../controller/forget_password_controoler.dart';
import '../data/models/login_request_body.dart';
import '../data/models/send_verification_code.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  LoginControllers controller = LoginControllers();

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

  void emitloginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
          username: controller.name.text, password: controller.password.text),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(token: loginResponse.data.token);
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      print('errrrrrrrrrrorHena$error');
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  void emitsendVerificationCodeStates({required String phoneNumber}) async {
    emit(const LoginState.sendVerificationCodeloading());
    final response = await _loginRepo.sendVerificationCode(
        otpRequestBody: SendVerificationCode(phoneNumber: phoneNumber));
    response.when(success: (loginResponse) async {
      emit(LoginState.sendVerificationCodesuccess(loginResponse));
    }, failure: (error) {
      emit(LoginState.sendVerificationCodeerror(
          error: error.apiErrorModel.message ?? ''));
    });
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
    emit(const LoginState.changeCountryLoading());
    country = newCountry;
    codeCountry = newCode;
    maxLength = newMaxLength;
    emit(const LoginState.changeCountrySuccess());
  }

  // MARK: -change Button Status
  changeButtonStatus() {
    emit(const LoginState.changeAvailableButtonLoading());
    if (controller.phone.text.length == maxLength) {
      isAvailable = true;
    } else {
      isAvailable = false;
    }
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const LoginState.changeAvailableButtonSuccess());
  }

  changeVerifyButtonStatus(int leangth) {
    emit(const LoginState.changeAvailableButtonLoading());
    if (leangth == 4) {
      isAvailable = true;
    } else {
      isAvailable = false;
    }
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const LoginState.changeAvailableButtonSuccess());
  }

  // MARK: -changePasswrodShow
  changePasswrodShow() {
    emit(const LoginState.changeAvailableButtonLoading());
    passwordShow = passwordShow == true ? false : true;
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const LoginState.changeAvailableButtonSuccess());
  }

  // MARK: -changetoPassword
  changetoPasswordMethod() {
    emit(const LoginState.changeAvailableButtonLoading());
    withPassword = withPassword == true ? false : true;
    // CacheHelper.savecodeCountry(codeCountry);
    emit(const LoginState.changeAvailableButtonSuccess());
  }

  //SecurityLogger
}
