import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/instructor_login_request_body.dart';
import '../../features/login/data/models/instructor_response.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/login/data/models/send_verification_code.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //auth

  //sendVerificationCode
  @POST(ApiConstants.sendVerificationCode)
  Future sendVerificationCode(
    @Body() SendVerificationCode sendVerificationCode,
  );

  //login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  //instructor_login
  @POST(ApiConstants.instructorLogin)
  Future<InstructorResponse> instructorLogin(
    @Body() InstructorLoginRequestBody instructorLoginRequestBody,
  );
  //profileComplete
  @POST(ApiConstants.profileComplete)
  Future profileComplete(
    @Body() profileComplete,
  );
  //update profile
  @POST(ApiConstants.updateProfile)
  Future updateProfile(
    @Body() updateProfile,
  );

  //toggleFavorite(add&remove)
  // @GET(
  //     "${ApiConstants.toggleFavorite}{storesId}") // Directly append storesId to the endpoint
  // Future toggleFavorite(@Path("storesId") String storesId);
}
