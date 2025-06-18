import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/instructor_login_request_body.dart';
import '../models/instructor_response.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import '../models/send_verification_code.dart';
import '../models/verify_request_body.dart';
import '../models/verify_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  // //sendVerificationCode
  Future<ApiResult> sendVerificationCode(
      {required SendVerificationCode otpRequestBody}) async {
    try {
      final response = await _apiService.sendVerificationCode(otpRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }

  // //verifyCode

  //login

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }

  //instructor Login
  Future<ApiResult<InstructorResponse>> instructorLogin(
      InstructorLoginRequestBody instructorLoginRequestBody) async {
    try {
      final response =
          await _apiService.instructorLogin(instructorLoginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }

  // //profileComplete
  // Future<ApiResult> profileComplete(
  //     {required profileCompleteRequestBody}) async {
  //   String? userToken =
  //       await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  //   try {
  //     final response = await _apiService.profileComplete(
  //         userToken!, profileCompleteRequestBody);
  //     return ApiResult.success(response);
  //   } catch (errro) {
  //     return ApiResult.failure(ErrorHandler.handle(errro));
  //   }
  // }
}
