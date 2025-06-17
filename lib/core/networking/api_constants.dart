class ApiConstants {
  static const String apiBaseUrl =
      "https://morabrand.net/el-fahem-commuintyApp/public/api/";
  static const String storgeApis =
      "https://morabrand.net/el-fahem-commuintyApp/public/storage/";

  //auth

  //send-verification-code
  static const String sendVerificationCode = "auth/phone-number";
  //login
  static const String login = "auth/login";
  //instructorLogin
  static const String instructorLogin = "instructor/login";
  //verify-code
  static const String verifyCode = "auth/verify-code";
  //profile complete
  static const String profileComplete = "auth/complete-profile";
  //updateProfile
  static const String updateProfile = "auth/user/update";

  //image
  static const String image = "image";

  //add-child
  static const String addChild = "auth/add-child";
  //myChildren
  static const String myChildren = "auth/myChildren";
  //me
  static const String me = "auth/me";
  //home screen apis
  static const String categories = "categories";
  //course
  static const String course = "course";
  //events
  static const String events = "events";
  //
  static const String departmentAndSessions = "departmentAndSessions";
  //instructorDepartmentAndSessions
  static const String instructorDepartmentAndSessions = "instructor/courses";
  //rating
  static const String rating = "rating";
  //userInCourse
  static const String userInCourse = "instructor/courses/";
  //my Courses
  static const String myCourses = "course/get/courses";
  //myEvent
  static const String myEvent = "my-events";
  //pay-my-events
  static const String payMyEvents = "pay-my-events";
  //myPoint
  static const String myPoint = "auth/user/getMyPoints";
  //coursesEnroll
  static const String coursesEnroll = "course/enroll/toPending";
  //notifications
  static const String notifications = "notifications";
  //myData
  static const String myData = "auth/me";
  //courseDestory
  static const String courseDestory = "course/destroy";
  //instructor
  //instructorCourses
  static const String instructorCourses = "instructor/courses";
  //instructor/courses/attendance
  static const String instructorAttendance = "instructor/courses/attendance";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
